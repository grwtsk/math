# homotopyEquivNormalizedMooreComplexAlternatingFaceMapComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bcfe5302a131e1d1afa7e79e2a33ab51cfe0d60fd9ecb79bc14ef7b225ac885",
  "kind": "def",
  "lexical_name": "homotopyEquivNormalizedMooreComplexAlternatingFaceMapComplex",
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
  "slug": "homotopyequivnormalizedmoorecomplexalternatingfacemapcomplex--aa1a71348ca29322888af5ab",
  "source": {
    "blob": "c0ce8e93ba372198977d4d045eaf8c5b276c53a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 82,
    "path": "GRWTSK/Topology/AlgebraicTopology/HomotopyEquivalence/Variant4a57e2ca769f7106ce7e3ee884973ce49f9936064e1b42ba4f30ceb4b91d4be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa1a71348ca29322888af5ab33b0cc81ab47ad72cced850941a41aeb0e0d56a4",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HomotopyEquivalence/Variant4a57e2ca769f7106ce7e3ee884973ce49f9936064e1b42ba4f30ceb4b91d4be5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bcfe5302a131e1d1afa7e79e2a33ab51cfe0d60fd9ecb79bc14ef7b225ac885`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homotopyEquivNormalizedMooreComplexAlternatingFaceMapComplex {A : Type*} [Category A]
    [Abelian A] {Y : SimplicialObject A} :
    HomotopyEquiv ((normalizedMooreComplex A).obj Y) ((alternatingFaceMapComplex A).obj Y) where
  hom := inclusionOfMooreComplexMap Y
  inv := PInftyToNormalizedMooreComplex Y
  homotopyHomInvId := Homotopy.ofEq (splitMonoInclusionOfMooreComplexMap Y).id
  homotopyInvHomId := Homotopy.trans
      (Homotopy.ofEq (PInftyToNormalizedMooreComplex_comp_inclusionOfMooreComplexMap Y))
      (homotopyPInftyToId Y)

end DoldKan

end AlgebraicTopology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HomotopyEquivalence/Variant4a57e2ca769f7106ce7e3ee884973ce49f9936064e1b42ba4f30ceb4b91d4be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HomotopyEquivalence/Variant4a57e2ca769f7106ce7e3ee884973ce49f9936064e1b42ba4f30ceb4b91d4be5.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0ce8e93ba372198977d4d045eaf8c5b276c53a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
