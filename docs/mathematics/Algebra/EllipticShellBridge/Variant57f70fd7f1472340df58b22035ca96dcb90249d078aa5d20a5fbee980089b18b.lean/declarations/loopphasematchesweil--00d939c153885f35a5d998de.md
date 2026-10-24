# LoopPhaseMatchesWeil

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:727b318924f2dae2ad47f34a04110b350566f3c3cd7f375a102d5f50ac223137",
  "kind": "def",
  "lexical_name": "LoopPhaseMatchesWeil",
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
  "slug": "loopphasematchesweil--00d939c153885f35a5d998de",
  "source": {
    "blob": "0e73304afc1ffeef864a54c45b738b9c5e89bb21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 29,
    "path": "GRWTSK/Algebra/EllipticShellBridge/Variant57f70fd7f1472340df58b22035ca96dcb90249d078aa5d20a5fbee980089b18b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00d939c153885f35a5d998de24e39f429317994e0c427fadbafcad9d1c0f0196",
  "verification": {
    "reference": "docs/verification/Algebra/EllipticShellBridge/Variant57f70fd7f1472340df58b22035ca96dcb90249d078aa5d20a5fbee980089b18b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:727b318924f2dae2ad47f34a04110b350566f3c3cd7f375a102d5f50ac223137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LoopPhaseMatchesWeil
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {m d k : Nat}
    (W : Arithmetic.WeilPairingContract G m)
    (T : Cellular.HeatQuantizedShellTorsion d k m)
    (P Q : Arithmetic.MTorsionPoint G m)
    (r : ZMod m)
    {x : Cellular.CubeAddress d k}
    (loop : Cellular.EdgePath d k x x) : Prop :=
  Cellular.pathIntegral T.connection loop = r * W.pairing P Q

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EllipticShellBridge/Variant57f70fd7f1472340df58b22035ca96dcb90249d078aa5d20a5fbee980089b18b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EllipticShellBridge/Variant57f70fd7f1472340df58b22035ca96dcb90249d078aa5d20a5fbee980089b18b.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e73304afc1ffeef864a54c45b738b9c5e89bb21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
