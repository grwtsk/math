# getSimpContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79fb6e5c0110098461076bce50cc8246fc811a5f5a4627747557b192c233180b",
  "kind": "def",
  "lexical_name": "getSimpContext",
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
  "slug": "getsimpcontext--030a730eae37db5adc4825c6",
  "source": {
    "blob": "264539ea7faf06998e3580697d34e352712218a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 189,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:030a730eae37db5adc4825c6196078a66560bff19d0246b0b5fe5081817fc2b4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79fb6e5c0110098461076bce50cc8246fc811a5f5a4627747557b192c233180b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def getSimpContext (config : Grind.Config) : MetaM Simp.Context := do
  let thms ← getNormTheorems
  Simp.mkContext
    (config :=
      { arith := true
        zeta := config.zeta
        zetaDelta := config.zetaDelta
        -- Use `OfNat.ofNat` and `Neg.neg` for representing bitvec literals
        bitVecOfNat := false
        catchRuntime := false
        warnExponents := false
        -- `implicitDefEqProofs := true` a recurrent source of performance problems in the kernel
        implicitDefEqProofs := false })
    (simpTheorems := #[thms])
    (congrTheorems := (← getSimpCongrTheorems))

set_option compiler.ignoreBorrowAnnotation true in
@[export lean_grind_normalize]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `264539ea7faf06998e3580697d34e352712218a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
