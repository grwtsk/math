# stepNormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2deb17f56f895c158f69467225074991248933279f3282f0e4cbcd82e7e2e8c0",
  "kind": "def",
  "lexical_name": "stepNormal",
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
  "slug": "stepnormal--32db7d8f16711bbcb8be7dd0",
  "source": {
    "blob": "958b743e6c161e2c6fc87571be26fd8b27ecf211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 469,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Config/Variant0f5dbdd6a65724b7574173c51473aea8313c992a856fc2b682f4bfcfa917e3df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32db7d8f16711bbcb8be7dd0509d341e1c2b3bcb03a98abec6bf950de62ccd55",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Config/Variant0f5dbdd6a65724b7574173c51473aea8313c992a856fc2b682f4bfcfa917e3df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2deb17f56f895c158f69467225074991248933279f3282f0e4cbcd82e7e2e8c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def stepNormal : Code → Cont → List ℕ → Cfg
  | Code.zero' => fun k v => Cfg.ret k (0::v)
  | Code.succ => fun k v => Cfg.ret k [v.headI.succ]
  | Code.tail => fun k v => Cfg.ret k v.tail
  | Code.cons f fs => fun k v => stepNormal f (Cont.cons₁ fs v k) v
  | Code.comp f g => fun k v => stepNormal g (Cont.comp f k) v
  | Code.case f g => fun k v =>
    v.headI.rec (stepNormal f k v.tail) fun y _ => stepNormal g k (y::v.tail)
  | Code.fix f => fun k v => stepNormal f (Cont.fix f k) v

/-- Evaluating a continuation `k : Cont` on input `v : List ℕ`. This is the second part of
evaluation, when we receive results from continuations built by `stepNormal`.

* `Cont.halt v = v`, so we are done and transition to the `Cfg.halt v` state
* `Cont.cons₁ fs as k v = k (v.headI :: fs as)`, so we evaluate `fs as` now with the continuation
  `k (v.headI :: _)` (called `cons₂ v k`).
* `Cont.cons₂ ns k v = k (ns.headI :: v)`, where we now have everything we need to evaluate
  `ns.headI :: v`, so we return it to `k`.
* `Cont.comp f k v = k (f v)`, so we call `f v` with `k` as the continuation.
* `Cont.fix f k v = k (if v.headI = 0 then k v.tail else fix f v.tail)`, where `v` is a value,
  so we evaluate the if statement and either call `k` with `v.tail`, or call `fix f v` with `k` as
  the continuation (which immediately calls `f` with `Cont.fix f k` as the continuation).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Config/Variant0f5dbdd6a65724b7574173c51473aea8313c992a856fc2b682f4bfcfa917e3df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Config/Variant0f5dbdd6a65724b7574173c51473aea8313c992a856fc2b682f4bfcfa917e3df.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `958b743e6c161e2c6fc87571be26fd8b27ecf211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
