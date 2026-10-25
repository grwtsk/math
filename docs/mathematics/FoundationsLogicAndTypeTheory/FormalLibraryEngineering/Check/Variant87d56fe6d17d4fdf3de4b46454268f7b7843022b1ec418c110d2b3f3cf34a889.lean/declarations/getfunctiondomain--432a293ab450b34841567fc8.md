# getFunctionDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae5315b0b5ea156958fe965592bba2c03247296716d395f03fa97349dfcc6b1f",
  "kind": "def",
  "lexical_name": "getFunctionDomain",
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
  "slug": "getfunctiondomain--432a293ab450b34841567fc8",
  "source": {
    "blob": "139c054faa039d297522f6f79da2ea0e673560f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:432a293ab450b34841567fc8532b0b8c8fcaea0932246ba0b50f44cb764b9fb9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae5315b0b5ea156958fe965592bba2c03247296716d395f03fa97349dfcc6b1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def getFunctionDomain (f : Expr) : MetaM (Expr × BinderInfo) := do
  let fType ← inferType f
  let fType ← whnfD fType
  match fType with
  | Expr.forallE _ d _ c => return (d, c)
  | _                    => throwFunctionExpected f

/--
Given two expressions `a` and `b`, this method tries to annotate terms with `pp.explicit := true`
and other `pp` options to expose "implicit" differences.
For example, suppose `a` and `b` are of the form
```lean
@HashMap Nat Nat eqInst hasInst1
@HashMap Nat Nat eqInst hasInst2
```
By default, the pretty printer formats both of them as `HashMap Nat Nat`.
So, counterintuitive error messages such as
```lean
error: application type mismatch
  HashMap.insert m
argument
  m
has type
  HashMap Nat Nat
but is expected to have type
  HashMap Nat Nat
```
would be produced.
By adding `pp.explicit := true`, we can generate the more informative error
```lean
error: application type mismatch
  HashMap.insert m
argument
  m
has type
  @HashMap Nat Nat eqInst hasInst1
but is expected to have type
  @HashMap Nat Nat eqInst hasInst2
```

Remark: this method implements simple heuristics; we should extend it as we find other counterintuitive
error messages.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `139c054faa039d297522f6f79da2ea0e673560f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
