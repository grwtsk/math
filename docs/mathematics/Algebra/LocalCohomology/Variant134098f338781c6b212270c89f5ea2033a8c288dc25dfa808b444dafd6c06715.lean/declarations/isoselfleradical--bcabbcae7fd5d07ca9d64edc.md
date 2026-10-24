# isoSelfLERadical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7293aeb8ad8b3c0fc62c84ec95d50d110e0d448fb857f8e88e48d79d5ccdc250",
  "kind": "def",
  "lexical_name": "isoSelfLERadical",
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
  "slug": "isoselfleradical--bcabbcae7fd5d07ca9d64edc",
  "source": {
    "blob": "778c6c5649e7ad884e1ab5f9baa499c88f452441",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 221,
    "path": "GRWTSK/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcabbcae7fd5d07ca9d64edc43fbf05d1730507c3d1881d2a3cc84ebc5124a58",
  "verification": {
    "reference": "docs/verification/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7293aeb8ad8b3c0fc62c84ec95d50d110e0d448fb857f8e88e48d79d5ccdc250`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoSelfLERadical (J : Ideal.{u} R) [IsNoetherian.{u, u} R R] (i : ℕ) :
    localCohomology.ofSelfLERadical.{u} J i ≅ localCohomology.{u} J i :=
  (localCohomology.isoOfFinal.{u, u, 0} (idealPowersToSelfLERadical.{u} J)
    (selfLERadicalDiagram.{u} J) i).symm ≪≫
      HasColimit.isoOfNatIso.{0,0,u+1,u+1} (Iso.refl.{u+1,u+1} _)

/-- Casting from the full subcategory of ideals with radical containing `J` to the full
subcategory of ideals with radical containing `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `778c6c5649e7ad884e1ab5f9baa499c88f452441` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
