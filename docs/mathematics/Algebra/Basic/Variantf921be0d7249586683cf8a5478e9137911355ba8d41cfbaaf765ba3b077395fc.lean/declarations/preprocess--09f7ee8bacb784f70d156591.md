# preprocess

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf5b198590231e139059dddb27b5e6088396273d76902115d6c2d0587e889c13",
  "kind": "def",
  "lexical_name": "preprocess",
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
  "slug": "preprocess--09f7ee8bacb784f70d156591",
  "source": {
    "blob": "ed995bfa0ffc702b8d0ec8411183ad7673672d08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 311,
    "path": "GRWTSK/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09f7ee8bacb784f70d156591a752345e1900266ec520a6e3bda6b78e1adbe217",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf5b198590231e139059dddb27b5e6088396273d76902115d6c2d0587e889c13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preprocess (e : Expr) : MetaM Simp.Result := do
  -- collect the available `push_cast` lemmas
  let thms : SimpTheorems := {}
  let thms ← [``Nat.cast_eq_algebraMap, ``Int.cast_eq_algebraMap,
    ``Algebra.algebraMap_eq_smul_one].foldlM (·.addConst ·) thms
  let ctx ← Simp.mkContext { failIfUnchanged := false } (simpTheorems := #[thms])
  return (← Simp.main e ctx (methods := Lean.Meta.Simp.mkDefaultMethodsCore {})).1

/-- Collect all scalar rings from scalar multiplications using a state monad for performance.

Note: The match in this definition should be kept up to date with the `Common.eval` function.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed995bfa0ffc702b8d0ec8411183ad7673672d08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
