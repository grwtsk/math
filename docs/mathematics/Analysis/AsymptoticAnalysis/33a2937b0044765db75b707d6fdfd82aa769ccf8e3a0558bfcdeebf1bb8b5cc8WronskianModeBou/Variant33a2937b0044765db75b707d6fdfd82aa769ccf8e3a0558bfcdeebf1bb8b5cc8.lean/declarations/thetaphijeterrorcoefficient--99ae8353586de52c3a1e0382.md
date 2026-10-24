# thetaPhiJetErrorCoefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f3fa72b9a67fa3bab4f05c1198d2cf37e774b0e88cc5f5c33b91b104d0a9656",
  "kind": "def",
  "lexical_name": "thetaPhiJetErrorCoefficient",
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
  "slug": "thetaphijeterrorcoefficient--99ae8353586de52c3a1e0382",
  "source": {
    "blob": "c6518146da7558fdc703d86bc420a77dc1e03d0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 161,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99ae8353586de52c3a1e03828b901224983b1642b79d65fa49070e0d252406f3",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f3fa72b9a67fa3bab4f05c1198d2cf37e774b0e88cc5f5c33b91b104d0a9656`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def thetaPhiJetErrorCoefficient (k : Fin 5) : ℝ :=
  4 * 4 ^ k.val * 3 ^ (2 * k.val + 4)

/-- The five error coefficients are exact integers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6518146da7558fdc703d86bc420a77dc1e03d0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
