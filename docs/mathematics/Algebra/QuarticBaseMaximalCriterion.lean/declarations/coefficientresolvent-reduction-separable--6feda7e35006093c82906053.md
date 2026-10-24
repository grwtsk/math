# coefficientResolvent_reduction_separable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58834d8b8373e79039b07b3bfb525ade35db78e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/Algebra/QuarticBaseMaximalCriterion.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99f5894c-01b9-18d4-56ef-13bf51524af3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc4defcf-6db3-3da5-7abd-f6d35400d63c",
  "kind": "theorem",
  "lexical_name": "coefficientResolvent_reduction_separable",
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
  "slug": "coefficientresolvent-reduction-separable--6feda7e35006093c82906053",
  "source": {
    "blob": "58834d8b8373e79039b07b3bfb525ade35db78e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 29,
    "path": "GRWTSK/Algebra/QuarticBaseMaximalCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6feda7e35006093c82906053d72261f62654c39f1639a00f8a1a6b79014d128a",
  "verification": {
    "reference": "docs/verification/Algebra/QuarticBaseMaximalCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc4defcf-6db3-3da5-7abd-f6d35400d63c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficientResolvent_reduction_separable
    (A B C D : R)
    (hd : (adjacencyCubic (-A) B (-C) D).discr ∉ I) :
    (adjacencyResolventOfMonicCoefficients
      (Ideal.Quotient.mk I A) (Ideal.Quotient.mk I B)
      (Ideal.Quotient.mk I C) (Ideal.Quotient.mk I D)).Separable := by
  have hsep := residue_adjacencyCubic_separable I (-A) B (-C) D hd
  have hpoly :
      (adjacencyCubic (Ideal.Quotient.mk I (-A))
        (Ideal.Quotient.mk I B) (Ideal.Quotient.mk I (-C))
        (Ideal.Quotient.mk I D)).toPoly =
      adjacencyResolventOfMonicCoefficients
        (Ideal.Quotient.mk I A) (Ideal.Quotient.mk I B)
        (Ideal.Quotient.mk I C) (Ideal.Quotient.mk I D) := by
    rw [adjacencyCubic_toPoly_eq_resolvent]
    simp [adjacencyResolventOfMonicCoefficients]
  rw [← hpoly]
  exact hsep

end
end GRWTSK.Algebra.QuarticBaseMaximalCriterion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/QuarticBaseMaximalCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuarticBaseMaximalCriterion.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58834d8b8373e79039b07b3bfb525ade35db78e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
