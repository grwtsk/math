# hallMatchingsOn.finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5915640db3a34d580d25d646eda4c4f690d9fb3838f79138d3b5b0ec15cf5c0",
  "kind": "instance",
  "lexical_name": "hallMatchingsOn.finite",
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
  "slug": "hallmatchingson-finite--48525b80e60c92abc3b31ca0",
  "source": {
    "blob": "6ccde56b92dfd7af39fcedbe8d2a12ec795db85b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 91,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8a48b3a4aecd1e76eeefe3858fd0df919ce3140c42340914f60201c9caee911b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48525b80e60c92abc3b31ca0de583a0e74486ed4506fe3ac827772facda12733",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8a48b3a4aecd1e76eeefe3858fd0df919ce3140c42340914f60201c9caee911b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5915640db3a34d580d25d646eda4c4f690d9fb3838f79138d3b5b0ec15cf5c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hallMatchingsOn.finite {ι : Type u} {α : Type v} (t : ι → Finset α) (ι' : Finset ι) :
    Finite (hallMatchingsOn t ι') := by
  classical
    rw [hallMatchingsOn]
    let g : hallMatchingsOn t ι' → ι' → ι'.biUnion t := by
      rintro f i
      refine ⟨f.val i, ?_⟩
      rw [mem_biUnion]
      exact ⟨i, i.property, f.property.2 i⟩
    apply Finite.of_injective g
    intro f f' h
    ext a
    rw [funext_iff] at h
    simpa [g] using h a

/-- This is the version of **Hall's Marriage Theorem** in terms of indexed
families of finite sets `t : ι → Finset α`.  It states that there is a
set of distinct representatives if and only if every union of `k` of the
sets has at least `k` elements.

Recall that `s.biUnion t` is the union of all the sets `t i` for `i ∈ s`.

This theorem is bootstrapped from `Finset.all_card_le_biUnion_card_iff_exists_injective'`,
which has the additional constraint that `ι` is a `Fintype`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8a48b3a4aecd1e76eeefe3858fd0df919ce3140c42340914f60201c9caee911b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8a48b3a4aecd1e76eeefe3858fd0df919ce3140c42340914f60201c9caee911b.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ccde56b92dfd7af39fcedbe8d2a12ec795db85b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
