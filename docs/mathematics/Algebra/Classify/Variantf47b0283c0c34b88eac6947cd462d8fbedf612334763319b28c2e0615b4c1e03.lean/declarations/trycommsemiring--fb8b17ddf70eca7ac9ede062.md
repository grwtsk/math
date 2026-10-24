# tryCommSemiring?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa432d1cde2330ac3a14f95a586ea523934d9ad0500af0068ca910b416b49739",
  "kind": "def",
  "lexical_name": "tryCommSemiring?",
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
  "slug": "trycommsemiring--fb8b17ddf70eca7ac9ede062",
  "source": {
    "blob": "fb6e879bd1e4411c06ef1ee286bc25a795b8f588",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 102,
    "path": "GRWTSK/Algebra/Classify/Variantf47b0283c0c34b88eac6947cd462d8fbedf612334763319b28c2e0615b4c1e03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb8b17ddf70eca7ac9ede062d90d61bda3e82969fb0054d7e958d49b1d2af053",
  "verification": {
    "reference": "docs/verification/Algebra/Classify/Variantf47b0283c0c34b88eac6947cd462d8fbedf612334763319b28c2e0615b4c1e03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa432d1cde2330ac3a14f95a586ea523934d9ad0500af0068ca910b416b49739`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def tryCommSemiring? (type : Expr) : SymM (Option Nat) := do
  let u ← getDecLevel type
  let commSemiring := mkApp (mkConst ``Grind.CommSemiring [u]) type
  let some commSemiringInst ← Sym.synthInstance? commSemiring | return none
  let semiringInst := mkApp2 (mkConst ``Grind.CommSemiring.toSemiring [u]) type commSemiringInst
  let q ← shareCommon (← Sym.canon (mkApp2 (mkConst ``Grind.Ring.OfSemiring.Q [u]) type semiringInst))
  -- The envelope `Q` type must be classifiable as a CommRing.
  let some ringId ← tryCacheAndCommRing? q
    | reportIssue! "unexpected failure initializing ring{indentExpr q}"; return none
  let id := (← getArithState).semirings.size
  let semiring : CommSemiring := {
    id, type, ringId, u, semiringInst, commSemiringInst
  }
  modifyArithState fun s => { s with semirings := s.semirings.push semiring }
  -- Link the envelope ring back to this semiring
  modifyArithState fun s =>
    let rings := s.rings.modify ringId fun r => { r with semiringId? := some id }
    { s with rings }
  return some id

/-- Try to classify `type` as a non-commutative `Semiring`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Classify/Variantf47b0283c0c34b88eac6947cd462d8fbedf612334763319b28c2e0615b4c1e03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Classify/Variantf47b0283c0c34b88eac6947cd462d8fbedf612334763319b28c2e0615b4c1e03.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb6e879bd1e4411c06ef1ee286bc25a795b8f588` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
