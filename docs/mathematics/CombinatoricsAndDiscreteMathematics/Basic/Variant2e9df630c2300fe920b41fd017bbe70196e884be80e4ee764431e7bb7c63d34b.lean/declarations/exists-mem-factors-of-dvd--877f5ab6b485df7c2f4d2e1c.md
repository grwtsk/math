# exists_mem_factors_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20fa22cf-c66a-4e9b-62b5-cb511ace22bc",
  "kind": "theorem",
  "lexical_name": "exists_mem_factors_of_dvd",
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
  "slug": "exists-mem-factors-of-dvd--877f5ab6b485df7c2f4d2e1c",
  "source": {
    "blob": "e53e00b13ce4f84aa9907bfe01506d3c8c22cc0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 196,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:877f5ab6b485df7c2f4d2e1c0c7880b5e5df1909024e9429163930760805c942",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20fa22cf-c66a-4e9b-62b5-cb511ace22bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_factors_of_dvd {a p : α} (ha0 : a ≠ 0) (hp : Irreducible p) :
    p ∣ a → ∃ q ∈ factors a, p ~ᵤ q := fun ⟨b, hb⟩ =>
  have hb0 : b ≠ 0 := fun hb0 => by simp_all
  have : Multiset.Rel Associated (p ::ₘ factors b) (factors a) :=
    factors_unique
      (fun _ hx => (Multiset.mem_cons.1 hx).elim (fun h => h.symm ▸ hp) (irreducible_of_factor _))
      irreducible_of_factor
      (Associated.symm <|
        calc
          Multiset.prod (factors a) ~ᵤ a := factors_prod ha0
          _ = p * b := hb
          _ ~ᵤ Multiset.prod (p ::ₘ factors b) := by
            rw [Multiset.prod_cons]; exact (factors_prod hb0).symm.mul_left _
          )
  Multiset.exists_mem_of_rel_of_mem this (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e53e00b13ce4f84aa9907bfe01506d3c8c22cc0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
