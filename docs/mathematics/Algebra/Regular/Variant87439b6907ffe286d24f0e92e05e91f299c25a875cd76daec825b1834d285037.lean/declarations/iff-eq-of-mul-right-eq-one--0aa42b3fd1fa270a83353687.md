# iff_eq_of_mul_right_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c35cc66b9ec90fed51409004cbd42a3184fd5f29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87439b6907ffe286d24f0e92e05e91f299c25a875cd76daec825b1834d285037.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:638c0a4d-5134-302c-a99e-754069d7ea2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae3c35c1-75f7-e455-60fd-ce9e9c911fed",
  "kind": "theorem",
  "lexical_name": "iff_eq_of_mul_right_eq_one",
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
  "slug": "iff-eq-of-mul-right-eq-one--0aa42b3fd1fa270a83353687",
  "source": {
    "blob": "c35cc66b9ec90fed51409004cbd42a3184fd5f29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 70,
    "path": "GRWTSK/Algebra/Regular/Variant87439b6907ffe286d24f0e92e05e91f299c25a875cd76daec825b1834d285037.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0aa42b3fd1fa270a83353687e2a7fe2be036153554ba99bdef7dbbf64cda4550",
  "verification": {
    "reference": "docs/verification/Algebra/Regular/Variant87439b6907ffe286d24f0e92e05e91f299c25a875cd76daec825b1834d285037.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae3c35c1-75f7-e455-60fd-ce9e9c911fed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iff_eq_of_mul_right_eq_one :
    IsDedekindFiniteMonoid α ↔ ∀ x y z : α, x * z = 1 → y * z = 1 → x = y := by
  refine (isDedekindFiniteMonoid_iff _).trans ⟨fun h x y z hxz hyz ↦ ?_, fun h x y eq ↦ ?_⟩
  · simpa [mul_assoc, h hyz] using congr_arg (· * y) hxz
  have := h _ (1 - y * x + x) _ eq <| by
    rw [add_mul, sub_mul, mul_assoc, eq, one_mul, mul_one, sub_self, zero_add]
  rwa [right_eq_add, sub_eq_zero, eq_comm] at this

end IsDedekindFiniteMonoid
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Regular/Variant87439b6907ffe286d24f0e92e05e91f299c25a875cd76daec825b1834d285037.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Regular/Variant87439b6907ffe286d24f0e92e05e91f299c25a875cd76daec825b1834d285037.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c35cc66b9ec90fed51409004cbd42a3184fd5f29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
