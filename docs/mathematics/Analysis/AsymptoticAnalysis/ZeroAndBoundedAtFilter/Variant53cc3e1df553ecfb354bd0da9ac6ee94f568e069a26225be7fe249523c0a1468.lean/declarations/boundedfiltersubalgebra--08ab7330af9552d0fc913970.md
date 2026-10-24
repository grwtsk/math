# boundedFilterSubalgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6a867218e3d68fe1d1819dd9d0d4adf93ba4a1c8d156d836314ba024490a3ee",
  "kind": "def",
  "lexical_name": "boundedFilterSubalgebra",
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
  "slug": "boundedfiltersubalgebra--08ab7330af9552d0fc913970",
  "source": {
    "blob": "482e969672dbe20125d0d151f414ac6b63d9a7f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 129,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08ab7330af9552d0fc91397036380146f8cf956b75eac6b7ce60e76ed7892c00",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6a867218e3d68fe1d1819dd9d0d4adf93ba4a1c8d156d836314ba024490a3ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boundedFilterSubalgebra
    [SeminormedCommRing 𝕜] [SeminormedRing β] [Algebra 𝕜 β] [IsBoundedSMul 𝕜 β] (l : Filter α) :
    Subalgebra 𝕜 (α → β) :=
  Submodule.toSubalgebra
    (boundedFilterSubmodule 𝕜 l)
    (const_boundedAtFilter l (1 : β))
    (fun f g hf hg ↦ by simpa only [Pi.one_apply, mul_one, norm_mul] using! hf.mul hg)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroAndBoundedAtFilter/Variant53cc3e1df553ecfb354bd0da9ac6ee94f568e069a26225be7fe249523c0a1468.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `482e969672dbe20125d0d151f414ac6b63d9a7f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
