# parse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41e150a305220e1e8810b18e37d4131a6b3f1d4ee41bfad50f5b28eb6644157e",
  "kind": "def",
  "lexical_name": "parse",
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
  "slug": "parse--22d294b1c7db8391e4efcc6b",
  "source": {
    "blob": "ced04f991a97441d85f7a185eab1527b0a1aafc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant9b7f626fb30ce91814ea3175c101a37a6caa82ab617ac0281395eded30b4be09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22d294b1c7db8391e4efcc6bb5bd3f5e2685c2276c5394f0ff38824b6aec5124",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant9b7f626fb30ce91814ea3175c101a37a6caa82ab617ac0281395eded30b4be09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41e150a305220e1e8810b18e37d4131a6b3f1d4ee41bfad50f5b28eb6644157e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def parse {u : Level} {α : Q(Type u)} (sα : Q(CommSemiring $α))
    (c : Ring.Cache sα) (e : Q($α)) : AtomM Poly := do
  let els := do
    try pure <| Poly.const (← (← NormNum.derive e).toRat)
    catch _ => pure <| Poly.var (← addAtom e).1
  let .const n _ := (← withReducible <| whnf e).getAppFn | els
  match n, c.rα with
  | ``HAdd.hAdd, _ | ``Add.add, _ => match e with
    | ~q($a + $b) => pure <| (← parse sα c a).add (← parse sα c b)
    | _ => els
  | ``HMul.hMul, _ | ``Mul.mul, _ => match e with
    | ~q($a * $b) => pure <| (← parse sα c a).mul (← parse sα c b)
    | _ => els
  | ``HSMul.hSMul, _ => match e with
    | ~q(($a : ℕ) • ($b : «$α»)) => pure <| (← parse sℕ .nat a).mul (← parse sα c b)
    | _ => els
  | ``HPow.hPow, _ | ``Pow.pow, _ => match e with
    | ~q($a ^ $b) =>
      try pure <| (← parse sα c a).pow (.const (← (← NormNum.derive (u := .zero) b).toRat))
      catch _ => els
    | _ => els
  | ``Neg.neg, some _ => match e with
    | ~q(-$a) => pure <| (← parse sα c a).neg
  | ``HSub.hSub, some _ | ``Sub.sub, some _ => match e with
    | ~q($a - $b) => pure <| (← parse sα c a).sub (← parse sα c b)
    | _ => els
  | _, _ => els

/-- The possible hypothesis sources for a polyrith proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant9b7f626fb30ce91814ea3175c101a37a6caa82ab617ac0281395eded30b4be09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant9b7f626fb30ce91814ea3175c101a37a6caa82ab617ac0281395eded30b4be09.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ced04f991a97441d85f7a185eab1527b0a1aafc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
