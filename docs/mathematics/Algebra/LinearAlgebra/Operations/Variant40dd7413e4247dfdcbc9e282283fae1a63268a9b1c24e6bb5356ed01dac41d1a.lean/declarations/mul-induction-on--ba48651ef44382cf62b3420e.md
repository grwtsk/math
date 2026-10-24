# mul_induction_on'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "476527349fcea81a613d2bd32b24cd4b442cdb7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40dd7413e4247dfdcbc9e282283fae1a63268a9b1c24e6bb5356ed01dac41d1a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b55c1e2b-63ac-7bf1-33d6-423cc71d0730",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed4e774d-63e4-9ddc-798d-e174dda87480",
  "kind": "theorem",
  "lexical_name": "mul_induction_on'",
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
  "slug": "mul-induction-on--ba48651ef44382cf62b3420e",
  "source": {
    "blob": "476527349fcea81a613d2bd32b24cd4b442cdb7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 228,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant40dd7413e4247dfdcbc9e282283fae1a63268a9b1c24e6bb5356ed01dac41d1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba48651ef44382cf62b3420ebdf9f75e86697511670150f38c49ac319a2e6c61",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Operations/Variant40dd7413e4247dfdcbc9e282283fae1a63268a9b1c24e6bb5356ed01dac41d1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed4e774d-63e4-9ddc-798d-e174dda87480`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem mul_induction_on' {C : ∀ r, r ∈ M * N → Prop}
    (mem_mul_mem : ∀ m (hm : m ∈ M) n (hn : n ∈ N), C (m * n) (mul_mem_mul hm hn))
    (add : ∀ x hx y hy, C x hx → C y hy → C (x + y) (add_mem hx hy)) {r : A} (hr : r ∈ M * N) :
    C r hr :=
  smul_induction_on' hr mem_mul_mem add

variable (M)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variant40dd7413e4247dfdcbc9e282283fae1a63268a9b1c24e6bb5356ed01dac41d1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variant40dd7413e4247dfdcbc9e282283fae1a63268a9b1c24e6bb5356ed01dac41d1a.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `476527349fcea81a613d2bd32b24cd4b442cdb7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
