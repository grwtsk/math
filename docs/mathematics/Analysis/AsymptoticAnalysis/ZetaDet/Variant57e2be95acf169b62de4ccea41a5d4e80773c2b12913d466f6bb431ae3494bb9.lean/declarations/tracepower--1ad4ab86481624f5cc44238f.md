# tracePower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9338b435c72527e647b0b21ae96ac730977768255513886d3db6caf3ed73722",
  "kind": "def",
  "lexical_name": "tracePower",
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
  "slug": "tracepower--1ad4ab86481624f5cc44238f",
  "source": {
    "blob": "e99b075e978235d0f3310393675e2d12236dd057",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 18,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaDet/Variant57e2be95acf169b62de4ccea41a5d4e80773c2b12913d466f6bb431ae3494bb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ad4ab86481624f5cc44238fdaa678cd7e407207fc2312cf81e0b49afae1fd19",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZetaDet/Variant57e2be95acf169b62de4ccea41a5d4e80773c2b12913d466f6bb431ae3494bb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9338b435c72527e647b0b21ae96ac730977768255513886d3db6caf3ed73722`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tracePower (T : Hϕ ϕ →ₗ[ℂ] Hϕ ϕ) (n : ℕ) : ℂ :=
  trace ℂ ((T ^ n : Hϕ ϕ →ₗ[ℂ] Hϕ ϕ))

/--
Zeta-regularized Fredholm determinant of a trace-class operator:
\[
\det_\zeta(I - λ T) = \exp\left(-\sum_{n=1}^\infty \frac{λ^n}{n} \operatorname{Tr}(T^n)\right)
\]
This defines an entire function of order 1, with zeros encoding the spectrum of T.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZetaDet/Variant57e2be95acf169b62de4ccea41a5d4e80773c2b12913d466f6bb431ae3494bb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZetaDet/Variant57e2be95acf169b62de4ccea41a5d4e80773c2b12913d466f6bb431ae3494bb9.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e99b075e978235d0f3310393675e2d12236dd057` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
