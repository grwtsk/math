# rearrangeComparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6c202e6bbdec3bbd875352de150bedf1048105250723dcd38908e4a977bf045",
  "kind": "def",
  "lexical_name": "rearrangeComparison",
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
  "slug": "rearrangecomparison--12fb99e4388a9cfa9bc942e2",
  "source": {
    "blob": "65f7708366e946e8d3a9150f43096b597113bd93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 242,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12fb99e4388a9cfa9bc942e23716a1653cab7beefbb39bf549f2af8645272535",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6c202e6bbdec3bbd875352de150bedf1048105250723dcd38908e4a977bf045`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def rearrangeComparison (e : Expr) : MetaM Expr := do
  aux e (← instantiateMVars (← inferType e))
where
  /-- Implementation of `rearrangeComparison`, after type inference. -/
  aux (proof e : Expr) : MetaM Expr :=
    match e.getAppFnArgs with
    | (``LE.le, #[_, _, a, b]) => match a.getAppFnArgs, b.getAppFnArgs with
      | _, (``OfNat.ofNat, #[_, .lit (.natVal 0), _]) => return proof
      | (``OfNat.ofNat, #[_, .lit (.natVal 0), _]), _ => mkAppM ``neg_nonpos_of_nonneg #[proof]
      | _, _                                          => mkAppM ``sub_nonpos_of_le #[proof]
    | (``LT.lt, #[_, _, a, b]) => match a.getAppFnArgs, b.getAppFnArgs with
      | _, (``OfNat.ofNat, #[_, .lit (.natVal 0), _]) => return proof
      | (``OfNat.ofNat, #[_, .lit (.natVal 0), _]), _ => mkAppM ``neg_neg_of_pos #[proof]
      | _, _                                          => mkAppM ``sub_neg_of_lt #[proof]
    | (``Eq, #[_, a, b]) => match a.getAppFnArgs, b.getAppFnArgs with
      | _, (``OfNat.ofNat, #[_, .lit (.natVal 0), _]) => return proof
      | (``OfNat.ofNat, #[_, .lit (.natVal 0), _]), _ => mkAppM ``Eq.symm #[proof]
      | _, _                                          => mkAppM ``sub_eq_zero_of_eq #[proof]
    | (``GT.gt, #[_, _, a, b]) => match a.getAppFnArgs, b.getAppFnArgs with
      | _, (``OfNat.ofNat, #[_, .lit (.natVal 0), _]) => mkAppM ``neg_neg_of_pos #[proof]
      | (``OfNat.ofNat, #[_, .lit (.natVal 0), _]), _ => mkAppM ``lt_zero_of_zero_gt #[proof]
      | _, _                                          => mkAppM ``sub_neg_of_lt #[proof]
    | (``GE.ge, #[_, _, a, b]) => match a.getAppFnArgs, b.getAppFnArgs with
      | _, (``OfNat.ofNat, #[_, .lit (.natVal 0), _]) => mkAppM ``neg_nonpos_of_nonneg #[proof]
      | (``OfNat.ofNat, #[_, .lit (.natVal 0), _]), _ => mkAppM ``le_zero_of_zero_ge #[proof]
      | _, _                                          => mkAppM ``sub_nonpos_of_le #[proof]
    | (``Not, #[a]) => do
      let nproof ← flipNegatedComparison proof a
      aux nproof (← inferType nproof)
    | a => throwError "couldn't rearrange comparison {a}"

/--
`compWithZero h` takes a proof `h` of an equality, inequality, or negation thereof,
and turns it into a proof of a comparison `_ R 0`, where `R ∈ {=, ≤, <}`.
 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65f7708366e946e8d3a9150f43096b597113bd93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
