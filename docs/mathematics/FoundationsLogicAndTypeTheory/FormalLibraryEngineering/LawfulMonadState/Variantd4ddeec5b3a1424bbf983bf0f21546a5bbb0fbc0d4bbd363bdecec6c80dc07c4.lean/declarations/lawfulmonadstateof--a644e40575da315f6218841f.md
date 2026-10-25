# LawfulMonadStateOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a276cdf8b6d889fd5c5950d3adcc613194688ccb73f1f01d7317f645c2a1af7",
  "kind": "class",
  "lexical_name": "LawfulMonadStateOf",
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
  "slug": "lawfulmonadstateof--a644e40575da315f6218841f",
  "source": {
    "blob": "42edda8f30b1560d466824191e2241f4279a7598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a644e40575da315f6218841f1b6f32af5d61d55f10d67daa5cc84e1c238510a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a276cdf8b6d889fd5c5950d3adcc613194688ccb73f1f01d7317f645c2a1af7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LawfulMonadStateOf (σ : semiOutParam (Type _)) (m : Type _ → Type _)
    [Monad m] [MonadStateOf σ m] extends LawfulMonad m where
  /-- `modifyGet f` is equal to getting the state, modifying it, and returning a result. -/
  modifyGet_eq {α} (f : σ → α × σ) :
    modifyGet (m := m) f = do let z ← f <$> get; set z.2; return z.1
  /-- Discarding the result of `get` is the same as never getting the state. -/
  get_bind_const {α} (mx : m α) : (do let _ ← get; mx) = mx
  /-- Calling `get` twice is the same as just using the first retreived state value. -/
  get_bind_get_bind {α} (mx : σ → σ → m α) :
    (do let s ← get; let s' ← get; mx s s') = (do let s ← get; mx s s)
  /-- Setting the monad state to its current value has no effect. -/
  get_bind_set_bind {α} (mx : σ → PUnit → m α) :
    (do let s ← get; let u ← set s; mx s u) = (do let s ← get; mx s PUnit.unit)
  /-- Setting and then returning the monad state is the same as returning the set value. -/
  set_bind_get (s : σ) : (do set (m := m) s; get) = (do set s; return s)
  /-- Setting the monad twice is the same as just setting to the final state. -/
  set_bind_set (s s' : σ) : (do set (m := m) s; set s') = set s'

namespace LawfulMonadStateOf

variable {σ : Type _} {m : Type _ → Type _} [Monad m]
  [MonadStateOf σ m] [LawfulMonadStateOf σ m]

attribute [simp] get_bind_const get_bind_get_bind get_bind_set_bind set_bind_get set_bind_set

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadState/Variantd4ddeec5b3a1424bbf983bf0f21546a5bbb0fbc0d4bbd363bdecec6c80dc07c4.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42edda8f30b1560d466824191e2241f4279a7598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
