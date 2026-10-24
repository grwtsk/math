# map_le_nonZeroDivisors_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "003160b91b292ebcfcd63f79aaf63263156e2263",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3f8be1a-f911-5d6f-62c9-9d623ac38511",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ff34fce-54e8-8b07-6f7d-6217ce5fa3e4",
  "kind": "theorem",
  "lexical_name": "map_le_nonZeroDivisors_of_injective",
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
  "slug": "map-le-nonzerodivisors-of-injective--cd496c66b203ea95ac5d0d9e",
  "source": {
    "blob": "003160b91b292ebcfcd63f79aaf63263156e2263",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 148,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd496c66b203ea95ac5d0d9e62c138c9a53693b3f5743e9cdab71b4ff38d2c6b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ff34fce-54e8-8b07-6f7d-6217ce5fa3e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_le_nonZeroDivisors_of_injective [NoZeroDivisors M'] [MonoidWithZeroHomClass F M M']
    (f : F) (hf : Function.Injective f) {S : Submonoid M} (hS : S ≤ M⁰) : S.map f ≤ M'⁰ := by
  cases subsingleton_or_nontrivial M
  · simp [Subsingleton.elim S ⊥]
  · exact le_nonZeroDivisors_of_noZeroDivisors fun h ↦
      let ⟨x, hx, hx0⟩ := h
      zero_ne_one (hS (hf (hx0.trans (map_zero f).symm) ▸ hx : 0 ∈ S) 1 (mul_zero 1)).symm
#align map_le_non_zero_divisors_of_injective map_le_nonZeroDivisors_of_injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `003160b91b292ebcfcd63f79aaf63263156e2263` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
