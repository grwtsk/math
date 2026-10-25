# moduleNFCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41b6a831b9594def949984f20d48f09a4870eb5df0a102bd6fbb441d6e1220e4",
  "kind": "def",
  "lexical_name": "moduleNFCore",
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
  "slug": "modulenfcore--635149d495df64fedd444926",
  "source": {
    "blob": "0e3f621eea8c7cc4296b57387d014ae46808a015",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleNF/Variant067b26f885d390a5c10b6b8d06ea7771796dafadb929a757ac97fdac9e24b48f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:635149d495df64fedd4449261ed62fa51607ee0ad9a0598c44e6da5fa76a8c4e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleNF/Variant067b26f885d390a5c10b6b8d06ea7771796dafadb929a757ac97fdac9e24b48f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41b6a831b9594def949984f20d48f09a4870eb5df0a102bd6fbb441d6e1220e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def moduleNFCore (s : IO.Ref AtomM.State) (base : Σ u : Level, Q(Type u)) (e : Expr) :
    ReaderT Simp.Context MetaM Simp.Result := do
  let postCtx ← read
  let cleanCtx ← cleanupCtx
  AtomM.recurse s { red := .instances } (wellBehavedDischarge := true) (evalExpr base postCtx)
    (cleanup cleanCtx) e

/-- `module_nf` normalizes the goal, by rewriting every linear combination `a • x + ... + b • y`
into a normal form, collecting the scalars of common terms and normalizing them with `ring_nf`. If
the goal is an equality and the two sides have the same normal form, `module_nf` closes the goal.
Otherwise the rewritten goal is left open, and `module_nf` can be used non-terminally.

Like `match_scalars` and `module`, linear combinations are parsed from `+`, `-`, `•` and `0`, other
subexpressions (including variables) are atoms, and the scalars are interpreted in the largest
scalar ring encountered, and subtraction requires a ring (see `match_scalars` for the requirements
on scalar types).

* `module_nf at loc` rewrites at the location(s) `loc`.
* `module_nf with R` uses `R` as the common ring of scalars.

Examples:

```lean
example [AddCommMonoid M] [CommSemiring R] [Module R M] (a b : R) (x : M) :
    a • x + b • x = (a + b) • x := by
  module_nf

example [AddCommMonoid M] [CommSemiring R] [Module R M] (a b : R) (x : M)
    (h : a • x + b • x = 0) : (b + a) • x = 0 := by
  module_nf at h ⊢
  exact h

example [AddCommGroup M] (x : M) (P : M → Prop) (h : P ((2 : ℤ) • x)) :
    P (x + x) ∧ P ((2 : ℤ) • x) := by
  module_nf with ℤ
  exact ⟨h, h⟩
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleNF/Variant067b26f885d390a5c10b6b8d06ea7771796dafadb929a757ac97fdac9e24b48f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleNF/Variant067b26f885d390a5c10b6b8d06ea7771796dafadb929a757ac97fdac9e24b48f.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e3f621eea8c7cc4296b57387d014ae46808a015` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
