# isNonTrivialProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7da8d8a203137b0a3f77424fe841eb10598dc427da3dceb9893f36fff8d6d47",
  "kind": "def",
  "lexical_name": "isNonTrivialProof",
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
  "slug": "isnontrivialproof--3a3ddefe123ed4cfdb62f1da",
  "source": {
    "blob": "16cf57a7efe3e9ed45fe4659358e945a34227b24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a3ddefe123ed4cfdb62f1da9892530b9c317bb43d877a2df7c35de8c02a8878",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7da8d8a203137b0a3f77424fe841eb10598dc427da3dceb9893f36fff8d6d47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isNonTrivialProof (e : Expr) : MetaM Bool := do
  let origEnv ← getEnv
  -- NOTE: this `withoutExporting` is not strictly necessary when considering the Lean elaborator
  -- per se because there `e` is an elaboration result that should have been produced under the same
  -- `Environment.isExporting` setting as the current one, so all referenced constants should be
  -- accessible as is. However, Mathlib's `[to_additive]`, for example, uses `abstractNestedProofs`
  -- on terms that contain the unfolding of non-exposed definitions and so may reference private
  -- declarations but the code might still be run under `isExporting = true` in order to create the
  -- new aux decls in the public scope. Thus we always shift to the private scope here.
  withoutExporting do
  if !(← isProof e) then
    return false
  else if e.isAppOf ``Grind.nestedProof then
    -- Grind.nestedProof is a gadget created by the `grind` tactic.
    -- We want to avoid the situation where `grind` keeps creating them,
    -- and this module, which is used by `grind`, keeps abstracting them.
    return false
  else
    -- We consider proofs such as `fun x => f x a` as trivial.
    -- For example, we don't want to abstract the body of `def rfl`
    (getLambdaBody e).withApp fun f args =>
      pure $ !f.isAtomic ||
        -- Again we may need to re-do an abstraction here for `to_additive` even if in base
        -- elaborator, this condition should never be fulfilled
        f.const?.any (!origEnv.contains ·.1) ||
        args.any fun arg => !arg.isAtomic

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16cf57a7efe3e9ed45fe4659358e945a34227b24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
