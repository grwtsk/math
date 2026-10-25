# unifyMovements

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7043f4023b412760cc33bd8d415a14512e8a20d08755a64456656a083411e06",
  "kind": "def",
  "lexical_name": "unifyMovements",
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
  "slug": "unifymovements--4b94e3a004a6f6c30a3d0828",
  "source": {
    "blob": "c5dea0eb5e25ff671ea3c8c07c8e49850cd86f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 398,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b94e3a004a6f6c30a3d0828b21857b2d2171d004d6f6848f15ca20d29c47a0c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7043f4023b412760cc33bd8d415a14512e8a20d08755a64456656a083411e06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unifyMovements (data : Array (Expr × Bool × Syntax)) (tgt : Expr) :
    MetaM (List (Expr × Bool) × (List MessageData × List Syntax) × Array MessageData) := do
  let ops ← getOps op tgt
  let atoms := (ops.map Prod.fst).flatten.toList.filter (!isBVar ·)
  -- `instr` are the unified user-provided terms, `neverMatched` are non-unified ones
  let (instr, neverMatched) ← pairUp data.toList atoms
  let dbgMsg := #[m!"Matching of input variables:\n\
    * pre-match:  {data.map (Prod.snd ∘ Prod.snd)}\n\
    * post-match: {instr}",
    m!"\nMaximum number of iterations: {ops.size}"]
  -- if there are `neverMatched` terms, return the parsed terms and the syntax
  let errMsg := neverMatched.map fun (t, a, stx) => (if a then m!"← {t}" else m!"{t}", stx)
  return (instr, errMsg.unzip, dbgMsg)

section parsing
open Elab Parser Tactic

/-- `parseArrows` parses an input of the form `[a, ← b, _ * (1 : ℤ)]`, consisting of a list of
terms, each optionally preceded by the arrow `←`.
It returns an array of triples consisting of
* the `Expr`ession corresponding to the parsed term,
* the `Bool`ean `true` if the arrow is present in front of the term,
* the underlying `Syntax` of the given term.

E.g. convert `[a, ← b, _ * (1 : ℤ)]` to
``[(a, false, `(a)), (b, true, `(b)), (_ * 1, false, `(_ * 1))]``.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5dea0eb5e25ff671ea3c8c07c8e49850cd86f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
