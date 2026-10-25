# parseStepGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00e31e928778c6ce40cdbe2adf6019193beaad3a003d9da0fd4acad44081c6e4",
  "kind": "def",
  "lexical_name": "parseStepGroup",
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
  "slug": "parsestepgroup--d44e095b121db0614a71b5a6",
  "source": {
    "blob": "ec32ec4f22dacca80979a462c9c23f83f5cc6cad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d44e095b121db0614a71b5a6d8da3b48fcb618c8fa77812e8f7c264d079ad579",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00e31e928778c6ce40cdbe2adf6019193beaad3a003d9da0fd4acad44081c6e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def parseStepGroup (stx : TSyntax `step_group) :
    CoreM ((e : PrimeCertExt) × Array (TSyntax e.syntaxName)) := do
  match stx.raw with
  | .node _ _ #[.atom _ key, step] => do
    let .some ext := (primeCertExt.getState (← getEnv)).get? key
      | throwError s!"unknown prime_cert extension {key}"
    return ⟨ext, #[.mk step]⟩
  | .node _ _ #[.atom _ key, _, .node _ _ steps, _] => do
    let .some ext := (primeCertExt.getState (← getEnv)).get? key
      | throwError s!"unknown prime_cert extension {key}"
    return ⟨ext, Syntax.TSepArray.getElems <| .mk (sep := ";") steps⟩
  | _ => throwUnsupportedSyntax

/-- The main primality certificate elaborator.

Syntax: `prime_cert% [group₁, group₂, ...]`

Each group is a registered method name followed by one or more steps:
- `small {p₁; p₂; ...}` — look up pre-proved small primes
- `pock (N, root, F₁)` or `pock {step₁; step₂; ...}` — Pocklington certificates
- `pock3 (N, root, m, mode, F)` — cube-root Pocklington certificates

Groups are processed left-to-right. Within each group, steps are processed in order.
Every certified prime is added to an internal `PrimeDict` so later steps can reference it.
The last prime certified becomes the result.

```lean
theorem prime_60digit :
    Nat.Prime 236684654874665389773181956283167565443541280517430278333971 := prime_cert%
  [small {2; 3; 7; 11; 29; 31},
   pock3 (73471, 3, 1, 7, 2 * 31),
   pock3 (32560621, 2, 1, 7, 2 ^ 2 * 3 * 29),
   pock3 (3586530508831189, 2, 1, 11, 2 ^ 2 * 73471),
   pock3 (236684654874665389773181956283167565443541280517430278333971,
     2, 1, 3, 2 * 32560621 * 3586530508831189)]
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variant33fb378c13e65aae0accefb9729aa9d6ea3df00251286da20a7ca9297942df8b.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec32ec4f22dacca80979a462c9c23f83f5cc6cad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
