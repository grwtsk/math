# evalRealArctan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41455c9ca01e8f30ee3a93543e315d0e6756cded4110ecb08d342adf895a75dc",
  "kind": "def",
  "lexical_name": "evalRealArctan",
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
  "slug": "evalrealarctan--477b353961c9518006dbe93c",
  "source": {
    "blob": "d8f7464f734096ef893093790f9a2fcd2b79c349",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 402,
    "path": "GRWTSK/Topology/GeneralTopology/Arctan/Variantde56b57eaef9d532e4f9c639ea83b7935555ecadb42cfd9d07f91f18f9b1af53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:477b353961c9518006dbe93ca93336225e027ac2c26118df61de33a79f57bad9",
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

Occurrence: `declaration:41455c9ca01e8f30ee3a93543e315d0e6756cded4110ecb08d342adf895a75dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def evalRealArctan : PositivityExt where eval {u α} z p e :=
  match p with | none => pure .none | some p => do
  match u, α, e with
  | 0, ~q(ℝ), ~q(Real.arctan $a) =>
    let ra ← core z p a
    match ra with
    | .positive pa =>
      assumeInstancesCommute
      return .positive q(Real.arctan_pos.mpr $pa)
    | .nonnegative na =>
      assumeInstancesCommute
      return .nonnegative q(Real.arctan_nonneg.mpr $na)
    | .nonzero na =>
      assumeInstancesCommute
      return .nonzero q(mt Real.arctan_eq_zero_iff.mp $na)
    | .none => return .none
  | _ => throwError "not Real.arctan"

/-- Extension for `Real.cos (Real.arctan _)`. -/
@[positivity Real.cos (Real.arctan _)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Arctan/Variantde56b57eaef9d532e4f9c639ea83b7935555ecadb42cfd9d07f91f18f9b1af53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Arctan/Variantde56b57eaef9d532e4f9c639ea83b7935555ecadb42cfd9d07f91f18f9b1af53.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8f7464f734096ef893093790f9a2fcd2b79c349` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
