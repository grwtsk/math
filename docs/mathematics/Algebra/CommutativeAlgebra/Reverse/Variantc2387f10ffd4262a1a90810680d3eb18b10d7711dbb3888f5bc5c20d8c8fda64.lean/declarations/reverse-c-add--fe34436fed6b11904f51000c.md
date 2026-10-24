# reverse_C_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d67bd38b-b1cb-8f2e-a52d-96f655600116",
  "kind": "lemma",
  "lexical_name": "reverse_C_add",
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
  "slug": "reverse-c-add--fe34436fed6b11904f51000c",
  "source": {
    "blob": "a0531dc47cc4ec4a77daa3f39a2784fbf1c826f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 332,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe34436fed6b11904f51000c7e157360835e6fa1025e173071c2067c6e1e7177",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d67bd38b-b1cb-8f2e-a52d-96f655600116`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma reverse_C_add (p : R[X]) (t : R) :
    reverse (C t + p) = C t * X ^ p.natDegree + reverse p := by
  rw [add_comm, reverse_add_C, add_comm]

section Eval₂

variable {S : Type*} [CommSemiring S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0531dc47cc4ec4a77daa3f39a2784fbf1c826f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
