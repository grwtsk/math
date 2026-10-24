# factored_kernel_blindness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a34790f-f2d5-d37b-0c8c-4fe2cc35f735",
  "kind": "theorem",
  "lexical_name": "factored_kernel_blindness",
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
  "slug": "factored-kernel-blindness--908d16a6f5d706b5f87ac58f",
  "source": {
    "blob": "cf1a7441b52f8d01cd0c19c49fdb6ea88e838a9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 202,
    "path": "GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:908d16a6f5d706b5f87ac58f7f3f92341a2dc4a9a4e82b190603337c38f08c8e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a34790f-f2d5-d37b-0c8c-4fe2cc35f735`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factored_kernel_blindness {H:Type*} [Group H] (rho:B3→*H)
    (hrho:FactorsThrough rho) (beta kappa:B3) (hkappa:matrixRepresentation kappa=1) :
    rho (beta*kappa) = rho beta := by
  rcases hrho with ⟨phi,rfl⟩
  simp only [MonoidHom.comp_apply,map_mul,hkappa,map_one,mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf1a7441b52f8d01cd0c19c49fdb6ea88e838a9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
