# pellZd_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1d47b60-44a7-7ee4-cb41-16ddd4ab2204",
  "kind": "theorem",
  "lexical_name": "pellZd_add",
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
  "slug": "pellzd-add--11709b70d678c53ea89bcfa8",
  "source": {
    "blob": "7813d6e6a7d7267649a4a4f69801bfc5fea99d2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 366,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451d332b7bc9935540d99b5d4c64c854d0e9261d84cbdfb5d911463608831ac5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11709b70d678c53ea89bcfa846fb32aa4d6de562b9b3345ef516cd6dad83d728",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451d332b7bc9935540d99b5d4c64c854d0e9261d84cbdfb5d911463608831ac5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1d47b60-44a7-7ee4-cb41-16ddd4ab2204`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pellZd_add (m) : ∀ n, pellZd a1 (m + n) = pellZd a1 m * pellZd a1 n
  | 0 => (mul_one _).symm
  | n + 1 => by rw [← add_assoc, pellZd_succ, pellZd_succ, pellZd_add _ n, ← mul_assoc]
#align pell.pell_zd_add Pell.pellZd_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451d332b7bc9935540d99b5d4c64c854d0e9261d84cbdfb5d911463608831ac5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451d332b7bc9935540d99b5d4c64c854d0e9261d84cbdfb5d911463608831ac5.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7813d6e6a7d7267649a4a4f69801bfc5fea99d2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
