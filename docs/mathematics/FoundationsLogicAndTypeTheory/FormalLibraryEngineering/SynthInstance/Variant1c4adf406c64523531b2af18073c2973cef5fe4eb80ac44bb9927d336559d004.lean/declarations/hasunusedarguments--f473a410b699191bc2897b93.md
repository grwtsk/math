# hasUnusedArguments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57ed19313ef4f59f9e2582f2e7241be7a4cc16dbcfe6132eaccd1d5defc5af6e",
  "kind": "def",
  "lexical_name": "hasUnusedArguments",
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
  "slug": "hasunusedarguments--f473a410b699191bc2897b93",
  "source": {
    "blob": "450d8edb60c648a3145eb1d9c2a410f4644debe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 486,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f473a410b699191bc2897b9383c3977b54b4724cf37cbccc70271e3f1e44d097",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57ed19313ef4f59f9e2582f2e7241be7a4cc16dbcfe6132eaccd1d5defc5af6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def hasUnusedArguments : Expr → Bool
  | .forallE _ _ b _ => !b.hasLooseBVar 0 || hasUnusedArguments b
  | _ => false

/--
  If the type of the metavariable `mvar` has unused argument, return a pair `(α, transformer)`
  where `α` is a new type without the unused arguments and the `transformer` is a function for converting a
  solution with type `α` into a value that can be assigned to `mvar`.
  Example: suppose `mvar` has type `(a : A) → (b : B a) → (c : C a) → D a c`, the result is the pair
  ```
  ((a : A) → (c : C a) → D a c,
   fun (f : (a : A) → (c : C a) → D a c) (a : A) (b : B a) (c : C a) => f a c
  )
  ```

  This method is used to improve the effectiveness of the TC resolution procedure. It was suggested and prototyped by
  Tomas Skrivan. It improves the support for instances of type `a : A → C` where `a` does not appear in class `C`.
  When we look for such an instance it is enough to look for an instance `c : C` and then return `fun _ => c`.

  Tomas' approach makes sure that instance of a type like `a : A → C` never gets tabled/cached. More on that later.
  At the core is this method. it takes an expression E and does two things:

  The modification to TC resolution works this way: We are looking for an instance of `E`, if it is tabled
  just get it as normal, but if not first remove all unused arguments producing `E'`. Now we look up the table again but
  for `E'`. If it exists, use the transformer to create E. If it does not exists, create a new goal `E'`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `450d8edb60c648a3145eb1d9c2a410f4644debe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
