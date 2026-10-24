# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c063dca73bc188f4407eb144720fa0702fc65dbfe0d9301844041dff71b73dc3",
  "kind": "elab",
  "lexical_name": null,
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
  "slug": "elab--2b70ecd390bf264ffae67fb3",
  "source": {
    "blob": "09a8944cb41d74b8da9eb6d4787cfb902727c82d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 33,
    "path": "GRWTSK/Algebra/OrderedProduct/Checks/Audit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b70ecd390bf264ffae67fb3c3ddb1b66d5aaf3669082770bfad41dd8c0d1f04",
  "verification": {
    "reference": "docs/verification/Algebra/OrderedProduct/Checks/Audit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c063dca73bc188f4407eb144720fa0702fc65dbfe0d9301844041dff71b73dc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab "#audit_ordered_product" : command => liftTermElabM do
  let _ ← Meta.getEqnsFor? `GRWTSK.Algebra.orderedProduct
  let _ ← Meta.getUnfoldEqnFor? `GRWTSK.Algebra.orderedProduct
  let _ ← Meta.getEqnsFor? `GRWTSK.Algebra.gaugeTransfer
  let env ← getEnv
  let roots := #[`GRWTSK.Algebra.orderedProduct, `GRWTSK.Algebra.orderedProduct_zero,
    `GRWTSK.Algebra.orderedProduct_succ, `GRWTSK.Algebra.orderedProduct_add,
    `GRWTSK.Algebra.gaugeTransfer, `GRWTSK.Algebra.orderedProduct_gaugeTransfer,
    `GRWTSK.Algebra.orderedProduct_conjugation, `GRWTSK.Algebra.commute_orderedProduct,
    `GRWTSK.Algebra.orderedProduct_inverse_commuting, `GRWTSK.Algebra.orderedProduct_sign_inverse]
  let generated := #[`GRWTSK.Algebra.orderedProduct._f,
    `GRWTSK.Algebra.orderedProduct._sunfold, `GRWTSK.Algebra.orderedProduct._unsafe_rec,
    `GRWTSK.Algebra.orderedProduct.match_1, `GRWTSK.Algebra.orderedProduct.eq_1,
    `GRWTSK.Algebra.orderedProduct.eq_2, `GRWTSK.Algebra.orderedProduct.eq_def,
    `GRWTSK.Algebra.gaugeTransfer.eq_1]
  for n in roots ++ generated do
    let some info := env.find? n | throwError "missing declaration: {n}"
    if roots.contains n && info.isUnsafe then throwError "unsafe interface: {n}"
    match info with
    | .axiomInfo _ => throwError "undeclared axiom: {n}"
    | _ => pure ()
    let axioms ← collectAxioms n
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {n}"
    logInfo m!"ORDERED_PRODUCT_DECL::{n}::{axioms.toList}"
  for (consumer, target) in
      #[( `GRWTSK.Algebra.Checks.product_add_consumer, `GRWTSK.Algebra.orderedProduct_add),
        ( `GRWTSK.Algebra.Checks.sign_inverse_consumer, `GRWTSK.Algebra.orderedProduct_sign_inverse)] do
    let some info := env.find? consumer | throwError "missing consumer: {consumer}"
    let some proof := info.value? true | throwError "missing proof term: {consumer}"
    unless proof.getUsedConstants.contains target do
      throwError "consumer lacks canonical proof dependency: {consumer}"
    let axioms ← collectAxioms consumer
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved consumer axiom {ax}"
    logInfo m!"ORDERED_PRODUCT_CONSUMER::{consumer}::{target}"
  logInfo "ORDERED_PRODUCT_ROOTS::10"
  logInfo "ORDERED_PRODUCT_GENERATED::8"

#audit_ordered_product
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/OrderedProduct/Checks/Audit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/OrderedProduct/Checks/Audit.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09a8944cb41d74b8da9eb6d4787cfb902727c82d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
