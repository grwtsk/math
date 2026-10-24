# SurjectiveOntoSelectedShellTwists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73961e7b8ba04b08835c52eda51c4f2ae5182db48326e1c605f0500e270cab99",
  "kind": "def",
  "lexical_name": "SurjectiveOntoSelectedShellTwists",
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
  "slug": "surjectiveontoselectedshelltwists--7144afca067f4e15dceec2b9",
  "source": {
    "blob": "58f85151dbaad6e7d5183c780500ee42f1f32b48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 81,
    "path": "GRWTSK/Algebra/EllipticShellBridge/Variant0b70a553e6057de8d5a22bb3faf4de23ff809733f35a126756008ad8ea457cc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7144afca067f4e15dceec2b97c15a072f86cf6590ee4eef96eed1663f791a170",
  "verification": {
    "reference": "docs/verification/Algebra/EllipticShellBridge/Variant0b70a553e6057de8d5a22bb3faf4de23ff809733f35a126756008ad8ea457cc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73961e7b8ba04b08835c52eda51c4f2ae5182db48326e1c605f0500e270cab99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SurjectiveOntoSelectedShellTwists
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {m d k : Nat}
    (R : Arithmetic.MTorsionPoint G m → Cellular.Cochain1 d k m)
    (T : SelectedShellTwistGroup d k m) : Prop :=
  ∀ τ ∈ T.Twist, ∃ P, R P = τ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EllipticShellBridge/Variant0b70a553e6057de8d5a22bb3faf4de23ff809733f35a126756008ad8ea457cc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EllipticShellBridge/Variant0b70a553e6057de8d5a22bb3faf4de23ff809733f35a126756008ad8ea457cc8.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58f85151dbaad6e7d5183c780500ee42f1f32b48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
