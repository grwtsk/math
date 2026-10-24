# mordellTotalityResidue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69279cecbd7dab3955469d90d59d5248b7ff24153e4a8cc38d290a7206a345df",
  "kind": "def",
  "lexical_name": "mordellTotalityResidue",
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
  "slug": "mordelltotalityresidue--e3875ef5762bbed4bc83bce1",
  "source": {
    "blob": "22648a68d73f88f87dccde06af1e3e371471df1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 64,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticGroupLaw/Variantc373e0f5340dabb2d456ff23b7ae2ecb6ae61a55c8c2ff57815d6d7b4c07920a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3875ef5762bbed4bc83bce12fd89f767d3fcc5de77082e09d8e5fdc9e97d1b5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticGroupLaw/Variantc373e0f5340dabb2d456ff23b7ae2ecb6ae61a55c8c2ff57815d6d7b4c07920a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69279cecbd7dab3955469d90d59d5248b7ff24153e4a8cc38d290a7206a345df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mordellTotalityResidue (s : EllipticCurveGroupLawSurface) : Think.Residue :=
  { target := FWR.Target.OpenConjectureLedger
    atomId := "mordell_theorem.totality_bridge_pending:" ++ s.curve.curveId
    kind := FWR.ResidueKind.externalTheoremNotImported
    blocks :=
      "elliptic curve group-law and Mordell totality surfaces are available, but the Mordell theorem proof/import is not checked here"
    clearsBy :=
      "checked Lean import/proof of Mordell-Weil finite generation and the required group-law adapter" }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticGroupLaw/Variantc373e0f5340dabb2d456ff23b7ae2ecb6ae61a55c8c2ff57815d6d7b4c07920a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticGroupLaw/Variantc373e0f5340dabb2d456ff23b7ae2ecb6ae61a55c8c2ff57815d6d7b4c07920a.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22648a68d73f88f87dccde06af1e3e371471df1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
