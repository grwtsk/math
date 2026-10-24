# Cotangent.mk_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "577fe06140e45bce34c448e91329dc1bc732d032",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 369,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a811083-5040-4243-ee25-4dc5749b294f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db45060a-f055-3bff-4b71-4ce5ab4c09b2",
  "kind": "lemma",
  "lexical_name": "Cotangent.mk_eq_zero_iff",
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
  "slug": "cotangent-mk-eq-zero-iff--4f833c1b9daa81f227663024",
  "source": {
    "blob": "577fe06140e45bce34c448e91329dc1bc732d032",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 369,
    "path": "GRWTSK/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f833c1b9daa81f227663024134a6f9c6f43a5d8e9a6883d394b784a80632bb0",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db45060a-f055-3bff-4b71-4ce5ab4c09b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Cotangent.mk_eq_zero_iff {P : Extension R S} (x : P.ker) :
    Cotangent.mk x = 0 ↔ x.val ∈ P.ker ^ 2 := by
  simp [Cotangent.ext_iff, Ideal.toCotangent_eq_zero]

variable {P'}
variable [Algebra R R'] [Algebra R' R''] [Algebra R' S'']
variable [Algebra S S'] [Algebra S' S''] [Algebra S S'']
variable [Algebra R S'] [IsScalarTower R R' S']

/-- A hom between two extensions induces a map between cotangent spaces. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianteb1d3f51c02c15338d8646bd09989cabb976d422bc65800856fa507b2ff06ce7.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `577fe06140e45bce34c448e91329dc1bc732d032` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
