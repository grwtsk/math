# existsUnique_true_in_row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db76815d283b3d7e8fcf9310109d533533594083",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f3031ae-8e89-5e67-f53a-0b526f6479c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04fbe97c-5f03-6606-8d3f-691610075a82",
  "kind": "theorem",
  "lexical_name": "existsUnique_true_in_row",
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
  "slug": "existsunique-true-in-row--2b51b103c851b71af9b4e4ed",
  "source": {
    "blob": "db76815d283b3d7e8fcf9310109d533533594083",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 63,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b51b103c851b71af9b4e4ede031a8a0a55448974dd184f9d23b14c814c49cc9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04fbe97c-5f03-6606-8d3f-691610075a82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_true_in_row (i : Fin P.width) :
    ∃! j, P.actionMatrix i j = true := by
  let j := P.encode (P.source.act (P.encode.symm i))
  refine ⟨j, ?_, ?_⟩
  · apply (P.action_spec i j).mpr
    simp [j]
  · intro k hk
    have hstate : P.source.act (P.encode.symm k) = P.encode.symm i := by
      apply P.encode.injective
      simpa using (P.action_spec i k).mp hk
    have hkstate :
        P.encode.symm k = P.source.act (P.encode.symm i) := by
      have hact := congrArg P.source.act hstate
      simpa using hact
    apply P.encode.symm.injective
    simpa [j] using hkstate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db76815d283b3d7e8fcf9310109d533533594083` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
