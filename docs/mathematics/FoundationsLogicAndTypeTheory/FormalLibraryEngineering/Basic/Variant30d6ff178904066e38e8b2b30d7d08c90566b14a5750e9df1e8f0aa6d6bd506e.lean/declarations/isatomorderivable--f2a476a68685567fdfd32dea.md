# isAtomOrDerivable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7eb1cc6d80a58f776d95564434ada57659532b6addf120b4088f04287cda960d",
  "kind": "def",
  "lexical_name": "isAtomOrDerivable",
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
  "slug": "isatomorderivable--f2a476a68685567fdfd32dea",
  "source": {
    "blob": "c0556d34bf7c0e9bdaf9836960c6b93fc2c23d35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1029,
    "line": 1009,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant30d6ff178904066e38e8b2b30d7d08c90566b14a5750e9df1e8f0aa6d6bd506e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2a476a68685567fdfd32dea670767580b335d6313c71bcd794bfa257bd4bd46",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant30d6ff178904066e38e8b2b30d7d08c90566b14a5750e9df1e8f0aa6d6bd506e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7eb1cc6d80a58f776d95564434ada57659532b6addf120b4088f04287cda960d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1009–1029.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isAtomOrDerivable {u} {α : Q(Type u)} (sα : Q(CommSemiring $α))
    (c : Cache sα) (e : Q($α)) : AtomM (Option (Option (Result (ExSum sα) e))) := do
  let els := try
      pure <| some (evalCast sα (← derive e))
    catch _ => pure (some none)
  let .const n _ := (← withReducible <| whnf e).getAppFn | els
  match n, c.rα, c.dα with
  | ``HAdd.hAdd, _, _ | ``Add.add, _, _
  | ``HMul.hMul, _, _ | ``Mul.mul, _, _
  | ``HSMul.hSMul, _, _
  | ``HPow.hPow, _, _ | ``Pow.pow, _, _
  | ``Neg.neg, some _, _
  | ``HSub.hSub, some _, _ | ``Sub.sub, some _, _
  | ``Inv.inv, _, some _
  | ``HDiv.hDiv, _, some _ | ``Div.div, _, some _ => pure none
  | _, _, _ => els

/--
Evaluates expression `e` of type `α` into a normalized representation as a polynomial.
This is the main driver of `ring`, which calls out to `evalAdd`, `evalMul` etc.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant30d6ff178904066e38e8b2b30d7d08c90566b14a5750e9df1e8f0aa6d6bd506e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant30d6ff178904066e38e8b2b30d7d08c90566b14a5750e9df1e8f0aa6d6bd506e.lean#L1009).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0556d34bf7c0e9bdaf9836960c6b93fc2c23d35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
