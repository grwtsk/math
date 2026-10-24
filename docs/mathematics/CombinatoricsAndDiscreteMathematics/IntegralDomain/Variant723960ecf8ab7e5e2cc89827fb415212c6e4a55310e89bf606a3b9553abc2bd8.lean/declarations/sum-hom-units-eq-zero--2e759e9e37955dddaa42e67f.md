# sum_hom_units_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df3a5a86b71dc582a11398c624b136ee47db1bd0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/723960ecf8ab7e5e2cc89827fb415212c6e4a55310e89bf606a3b9553abc2bd8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f4a8f18-c0b1-cbff-857f-ed5c809cc140",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47ff1006-bdd9-5720-d5ce-0ed3331279c7",
  "kind": "theorem",
  "lexical_name": "sum_hom_units_eq_zero",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "sum-hom-units-eq-zero--2e759e9e37955dddaa42e67f",
  "source": {
    "blob": "df3a5a86b71dc582a11398c624b136ee47db1bd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 186,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant723960ecf8ab7e5e2cc89827fb415212c6e4a55310e89bf606a3b9553abc2bd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e759e9e37955dddaa42e67f2884b250a0b94d546d8dd83fc0bb5e8c576cf25b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant723960ecf8ab7e5e2cc89827fb415212c6e4a55310e89bf606a3b9553abc2bd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47ff1006-bdd9-5720-d5ce-0ed3331279c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_hom_units_eq_zero (f : G →* R) (hf : f ≠ 1) : ∑ g : G, f g = 0 := by
  classical
    obtain ⟨x, hx⟩ := IsCyclic.exists_monoid_generator (α := MonoidHom.range f.toHomUnits)
    have hx1 : (x.1 : R) - 1 ≠ 0 := by
      rw [sub_ne_zero]
      contrapose hf
      ext g
      obtain ⟨n, hn⟩ := hx ⟨f.toHomUnits g, g, rfl⟩
      simpa [hf, Subtype.ext_iff, Units.ext_iff] using hn.symm
    let c := #{g | f.toHomUnits g = 1}
    calc
      ∑ g : G, f g = ∑ u ∈ univ.image f.toHomUnits, #{g | f.toHomUnits g = u} • (u : R) :=
        sum_comp ((↑) : Rˣ → R) f.toHomUnits
      _ = ∑ u ∈ univ.image f.toHomUnits, c • (u : R) :=
        (sum_congr rfl fun u hu => congr_arg₂ _ ?_ rfl)
      -- remaining goal 1, proven below
      _ = ∑ b : MonoidHom.range f.toHomUnits, c • (b.1 : R) :=
        (Finset.sum_subtype _ (by simp) _)
      _ = c • ∑ b : MonoidHom.range f.toHomUnits, (b.1 : R) := smul_sum.symm
      _ = c • 0 := congr_arg₂ _ rfl ?_
      -- remaining goal 2, proven below
      _ = 0 := smul_zero _
    · -- remaining goal 1
      apply MonoidHom.card_fiber_eq_of_mem_range f.toHomUnits
      · simpa only [mem_image, mem_univ, true_and, Set.mem_range] using hu
      · exact ⟨1, f.toHomUnits.map_one⟩
    -- remaining goal 2
    calc
      (∑ b : MonoidHom.range f.toHomUnits, (b.1 : R))
        = ∑ n ∈ range (orderOf x), (x.1 : R) ^ n :=
        Eq.symm <|
          sum_nbij (x ^ ·) (by simp)
            (by simpa using pow_injOn_Iio_orderOf)
            (fun b _ => let ⟨n, hn⟩ := hx b
              ⟨n % orderOf x, mem_range.2 (Nat.mod_lt _ (orderOf_pos _)), by simp [hn]⟩)
            (by simp)
      _ = 0 := ?_
    rw [← mul_left_inj' hx1, zero_mul, geom_sum_mul]
    norm_cast
    simp [pow_orderOf_eq_one]

/-- In an integral domain, a sum indexed by a homomorphism from a finite group is zero,
unless the homomorphism is trivial, in which case the sum is equal to the cardinality of the group.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant723960ecf8ab7e5e2cc89827fb415212c6e4a55310e89bf606a3b9553abc2bd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant723960ecf8ab7e5e2cc89827fb415212c6e4a55310e89bf606a3b9553abc2bd8.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df3a5a86b71dc582a11398c624b136ee47db1bd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
