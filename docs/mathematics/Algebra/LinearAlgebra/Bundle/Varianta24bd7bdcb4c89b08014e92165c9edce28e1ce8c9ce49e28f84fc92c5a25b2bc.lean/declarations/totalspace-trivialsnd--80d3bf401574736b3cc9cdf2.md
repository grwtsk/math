# TotalSpace.trivialSnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f11914d5fcaaa1cb5e12006f2cc1cfd1bfece0dee9173f81acc938f3383bf179",
  "kind": "def",
  "lexical_name": "TotalSpace.trivialSnd",
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
  "slug": "totalspace-trivialsnd--80d3bf401574736b3cc9cdf2",
  "source": {
    "blob": "2397d4a6c0ebabe6b420b6760b2a9d5bd4c3c6af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 111,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bundle/Varianta24bd7bdcb4c89b08014e92165c9edce28e1ce8c9ce49e28f84fc92c5a25b2bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80d3bf401574736b3cc9cdf2a37b82c507f81baa8b200345e928aa62bd7334bd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bundle/Varianta24bd7bdcb4c89b08014e92165c9edce28e1ce8c9ce49e28f84fc92c5a25b2bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f11914d5fcaaa1cb5e12006f2cc1cfd1bfece0dee9173f81acc938f3383bf179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TotalSpace.trivialSnd (B : Type*) (F : Type*) : TotalSpace F (Bundle.Trivial B F) → F :=
  TotalSpace.snd
#align bundle.total_space.trivial_snd Bundle.TotalSpace.trivialSnd

/-- A trivial bundle is equivalent to the product `B × F`. -/
@[simps (config := { attrs := [`simp, `mfld_simps] })]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bundle/Varianta24bd7bdcb4c89b08014e92165c9edce28e1ce8c9ce49e28f84fc92c5a25b2bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bundle/Varianta24bd7bdcb4c89b08014e92165c9edce28e1ce8c9ce49e28f84fc92c5a25b2bc.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2397d4a6c0ebabe6b420b6760b2a9d5bd4c3c6af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
