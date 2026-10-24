# _root_.GRWTSK.Algebra.LinearAlgebra.LinearIndependentSingle.Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.Module.Free.pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0f0d29465e784339cd3de445f69a6761c60d19bc54f2707ca5972a0956cbf8a",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.LinearIndependentSingle.Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.Module.Free.pi",
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
  "slug": "root-grwtsk-algebra-linearalgebra-linearindependentsingle-variant19e1b24--d94fcf4cfcbcb5ddc2cd2a20",
  "source": {
    "blob": "cce059ba399320e06f80e309d25abc60c23a4e03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 217,
    "path": "GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d94fcf4cfcbcb5ddc2cd2a208fd0ec5f6cce909eac7ac6a9d4fce143a68d0d73",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0f0d29465e784339cd3de445f69a6761c60d19bc54f2707ca5972a0956cbf8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.GRWTSK.Algebra.LinearAlgebra.LinearIndependentSingle.Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.Module.Free.pi (M : ι → Type*) [Finite ι] [∀ i : ι, AddCommMonoid (M i)]
    [∀ i : ι, Module R (M i)] [∀ i : ι, Module.Free R (M i)] : Module.Free R (∀ i, M i) :=
  let ⟨_⟩ := nonempty_fintype ι
  .of_basis <| Pi.basis fun i => Module.Free.chooseBasis R (M i)

variable (ι) in
/-- The product of finitely many free modules is free (non-dependent version to help with typeclass
search). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant062f3b76316e01850f37f13bcc43d1a19215d9fae019670b02777915e789b7fd.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cce059ba399320e06f80e309d25abc60c23a4e03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
