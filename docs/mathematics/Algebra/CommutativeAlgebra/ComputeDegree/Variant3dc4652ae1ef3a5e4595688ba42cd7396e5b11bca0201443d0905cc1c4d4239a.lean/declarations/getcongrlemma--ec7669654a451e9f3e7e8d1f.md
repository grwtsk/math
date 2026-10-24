# getCongrLemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03e8b58180db57599d899a427294410a747111c515f95d186586050fc03969c8",
  "kind": "def",
  "lexical_name": "getCongrLemma",
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
  "slug": "getcongrlemma--ec7669654a451e9f3e7e8d1f",
  "source": {
    "blob": "22f5c723b7c4823e8d7123b3af865ae9d6cb9caf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 298,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variant3dc4652ae1ef3a5e4595688ba42cd7396e5b11bca0201443d0905cc1c4d4239a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec7669654a451e9f3e7e8d1fce4e5710d4b185efe990b162d902586eb15067e9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ComputeDegree/Variant3dc4652ae1ef3a5e4595688ba42cd7396e5b11bca0201443d0905cc1c4d4239a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03e8b58180db57599d899a427294410a747111c515f95d186586050fc03969c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getCongrLemma (twoH : Name × Name × List Bool) (debug : Bool := false) : Name :=
  let nam := match twoH with
    | (_,           ``LE.le, [rhs]) => if rhs then ``id else ``le_trans
    | (_,           ``LT.lt, [rhs]) => if rhs then ``id else ``lt_of_le_of_lt
    | (``natDegree, ``Eq, [rhs])    => if rhs then ``id else ``natDegree_eq_of_le_of_coeff_ne_zero'
    | (``degree,    ``Eq, [rhs])    => if rhs then ``id else ``degree_eq_of_le_of_coeff_ne_zero'
    | (``coeff,     ``Eq, [rhs, c]) =>
      match rhs, c with
      | false, false => ``coeff_congr
      | false, true  => ``Eq.trans
      | true, false  => ``coeff_congr_lhs
      | true, true   => ``id
    | _ => ``id
  if debug then
    let last := nam.lastComponentAsString
    let natr := if last == "trans" then nam.toString else last
    dbg_trace f!"congr lemma: '{natr}'"
    nam
  else
    nam

/--
`dispatchLemma twoH` takes its input `twoH` from the output of `twoHeadsArgs`.

Using the information contained in `twoH`, it decides which lemma is the most appropriate.

`dispatchLemma` is essentially the main dictionary for `compute_degree`.
-/
--  Internally, `dispatchLemma` produces 3 names: these are the lemmas that are appropriate
--  for goals of the form `natDegree f ≤ d`, `degree f ≤ d`, `coeff f d = a`, in this order.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ComputeDegree/Variant3dc4652ae1ef3a5e4595688ba42cd7396e5b11bca0201443d0905cc1c4d4239a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variant3dc4652ae1ef3a5e4595688ba42cd7396e5b11bca0201443d0905cc1c4d4239a.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22f5c723b7c4823e8d7123b3af865ae9d6cb9caf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
