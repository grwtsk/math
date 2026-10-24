# isUnramifiedIn_iff_forall_of_isDedekindDomain'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd03c36335bd9774b3fcf423ce93dc638fbab2d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85a59e5b62d5f0ab1c72b13cd958e93481e6ac2894c91389c3bc5696015e94cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:569d17ba-2879-3274-deb1-9b48a77b0fff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:113ec0fc-e47c-2e54-5cdb-1d18b9a6be16",
  "kind": "theorem",
  "lexical_name": "isUnramifiedIn_iff_forall_of_isDedekindDomain'",
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
  "slug": "isunramifiedin-iff-forall-of-isdedekinddomain--b3558139553643a6655b0098",
  "source": {
    "blob": "fd03c36335bd9774b3fcf423ce93dc638fbab2d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 131,
    "path": "GRWTSK/Algebra/Unramified/Variant85a59e5b62d5f0ab1c72b13cd958e93481e6ac2894c91389c3bc5696015e94cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3558139553643a6655b0098cc818e4d15c80d0851a536ff77cc36db055a3298",
  "verification": {
    "reference": "docs/verification/Algebra/Unramified/Variant85a59e5b62d5f0ab1c72b13cd958e93481e6ac2894c91389c3bc5696015e94cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:113ec0fc-e47c-2e54-5cdb-1d18b9a6be16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnramifiedIn_iff_forall_of_isDedekindDomain' [IsDomain R] [IsDedekindDomain S]
    [Module.IsTorsionFree R S] {p : Ideal R} (hp : p ≠ ⊥) :
    IsUnramifiedIn S p ↔
      ∀ (P : Ideal S) (_ : P.IsMaximal), P.LiesOver p → IsUnramifiedAt R P :=
  ⟨fun h P hP hlo ↦ h P hP.isPrime hlo,
    fun h P hP hlo ↦ h P (hP.isMaximal (Ideal.ne_bot_of_liesOver_of_ne_bot hp P)) hlo⟩

/-- Let `S` be a Dedekind domain that is integral and torsion-free over a characteristic-zero
domain `R`. Then an ideal `p` of `R` is unramified in `S` if and only if `S` is unramified at every
maximal ideal `P` of `S` lying over `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Unramified/Variant85a59e5b62d5f0ab1c72b13cd958e93481e6ac2894c91389c3bc5696015e94cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Unramified/Variant85a59e5b62d5f0ab1c72b13cd958e93481e6ac2894c91389c3bc5696015e94cc.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd03c36335bd9774b3fcf423ce93dc638fbab2d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
