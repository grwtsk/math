# lift_comp_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a9db0d480f3d03f00b5d8d97d0c115fd22f0949",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eaa4934e-32a9-82cf-9645-774221c86316",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a87a5f18-f0f2-fc3f-51b8-cd2ba608084f",
  "kind": "theorem",
  "lexical_name": "lift_comp_mk'",
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
  "slug": "lift-comp-mk--a4cc1eeef026de1e248e3d84",
  "source": {
    "blob": "2a9db0d480f3d03f00b5d8d97d0c115fd22f0949",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 227,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4cc1eeef026de1e248e3d8407a1aae26ad5ca87aacc8acbbab1eb2b4ccd3a03",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a87a5f18-f0f2-fc3f-51b8-cd2ba608084f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_comp_mk' (H : c ≤ ker f) : (c.lift f H).comp c.mk' = f := by ext; rfl

/-- Given a homomorphism `f` from the quotient of a monoid by a congruence relation, `f` equals the
    homomorphism on the quotient induced by `f` composed with the natural map from the monoid to
    the quotient. -/
@[to_additive (attr := simp) "Given a homomorphism `f` from the quotient of an `AddMonoid` by an
additive congruence relation, `f` equals the homomorphism on the quotient induced by `f` composed
with the natural map from the `AddMonoid` to the quotient."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Varianta0e4460b7b9185ea5d6bac1db4e81cb77f2341940cd17ac97b32c5fafac02fdb.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a9db0d480f3d03f00b5d8d97d0c115fd22f0949` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
