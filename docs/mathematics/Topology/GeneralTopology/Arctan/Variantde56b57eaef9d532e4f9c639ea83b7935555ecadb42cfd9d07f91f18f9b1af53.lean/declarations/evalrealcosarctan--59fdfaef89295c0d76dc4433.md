# evalRealCosArctan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:055830ceabbca6b448a7d747dcce04526bfa121f10a56c4943cf1a3def3930fa",
  "kind": "def",
  "lexical_name": "evalRealCosArctan",
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
  "slug": "evalrealcosarctan--59fdfaef89295c0d76dc4433",
  "source": {
    "blob": "d8f7464f734096ef893093790f9a2fcd2b79c349",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 422,
    "path": "GRWTSK/Topology/GeneralTopology/Arctan/Variantde56b57eaef9d532e4f9c639ea83b7935555ecadb42cfd9d07f91f18f9b1af53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59fdfaef89295c0d76dc4433639d781881dae7f096a18f2ed7d56eb9253526cf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Arctan/Variantde56b57eaef9d532e4f9c639ea83b7935555ecadb42cfd9d07f91f18f9b1af53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:055830ceabbca6b448a7d747dcce04526bfa121f10a56c4943cf1a3def3930fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def evalRealCosArctan : PositivityExt where eval {u α} _ pα? e :=
  match pα? with | none => pure .none | some _ => do
  match u, α, e with
  | 0, ~q(ℝ), ~q(Real.cos (Real.arctan $a)) =>
    assumeInstancesCommute
    return .positive q(Real.cos_arctan_pos _)
  | _ => throwError "not Real.cos (Real.arctan _)"

/-- Extension for `Real.sin (Real.arctan _)`. -/
@[positivity Real.sin (Real.arctan _)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Arctan/Variantde56b57eaef9d532e4f9c639ea83b7935555ecadb42cfd9d07f91f18f9b1af53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Arctan/Variantde56b57eaef9d532e4f9c639ea83b7935555ecadb42cfd9d07f91f18f9b1af53.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8f7464f734096ef893093790f9a2fcd2b79c349` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
