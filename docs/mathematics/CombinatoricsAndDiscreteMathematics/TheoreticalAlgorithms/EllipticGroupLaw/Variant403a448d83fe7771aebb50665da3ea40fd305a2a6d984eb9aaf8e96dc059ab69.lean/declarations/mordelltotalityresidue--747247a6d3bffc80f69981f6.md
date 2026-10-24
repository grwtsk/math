# mordellTotalityResidue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0da12b170c8f500c052c44e58e6c1679a11c3b0e4166555f341136911137a84e",
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
  "slug": "mordelltotalityresidue--747247a6d3bffc80f69981f6",
  "source": {
    "blob": "311e608a7824eda310cc8608c10e227d99ac0484",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticGroupLaw/Variant403a448d83fe7771aebb50665da3ea40fd305a2a6d984eb9aaf8e96dc059ab69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:747247a6d3bffc80f69981f64bca7d1c3a73d27dbbbea18e42d013c53cb8c0d8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticGroupLaw/Variant403a448d83fe7771aebb50665da3ea40fd305a2a6d984eb9aaf8e96dc059ab69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0da12b170c8f500c052c44e58e6c1679a11c3b0e4166555f341136911137a84e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–80.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticGroupLaw/Variant403a448d83fe7771aebb50665da3ea40fd305a2a6d984eb9aaf8e96dc059ab69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticGroupLaw/Variant403a448d83fe7771aebb50665da3ea40fd305a2a6d984eb9aaf8e96dc059ab69.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `311e608a7824eda310cc8608c10e227d99ac0484` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
