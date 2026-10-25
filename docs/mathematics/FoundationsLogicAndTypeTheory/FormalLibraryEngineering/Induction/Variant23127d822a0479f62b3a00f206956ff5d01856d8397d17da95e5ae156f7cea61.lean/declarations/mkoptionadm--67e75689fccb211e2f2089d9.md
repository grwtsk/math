# mkOptionAdm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a823cc87273aba12e2907c968c35cfd9f7bde2eb6016087763c91d55d080d6f",
  "kind": "def",
  "lexical_name": "mkOptionAdm",
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
  "slug": "mkoptionadm--67e75689fccb211e2f2089d9",
  "source": {
    "blob": "dcdc1ebc613f14a2e35ff00d1aa4ead4d7eed966",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 350,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67e75689fccb211e2f2089d94a59e65c050ea97b3fe7d2b0ca64c8da63b4cad8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a823cc87273aba12e2907c968c35cfd9f7bde2eb6016087763c91d55d080d6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkOptionAdm (motive : Expr) : MetaM Expr := do
  let type ← inferType motive
  forallTelescope type fun ysr _ => do
    let P := mkAppN motive ysr
    let ys := ysr.pop
    let r := ysr.back!
    let mut inst ← mkAppM ``Option.admissible_eq_some #[P, r]
    inst ← mkLambdaFVars #[r] inst
    inst ← mkAppOptM ``admissible_pi #[none, none, none, none, inst]
    for y in ys.reverse do
      inst ← mkLambdaFVars #[y] inst
      inst ← mkAppOptM ``Order.admissible_pi_apply #[none, none, none, none, inst]
    pure inst

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcdc1ebc613f14a2e35ff00d1aa4ead4d7eed966` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
