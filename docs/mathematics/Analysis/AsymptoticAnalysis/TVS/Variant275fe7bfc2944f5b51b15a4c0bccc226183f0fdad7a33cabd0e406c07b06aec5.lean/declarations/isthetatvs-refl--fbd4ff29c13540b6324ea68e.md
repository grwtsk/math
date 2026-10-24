# IsThetaTVS.refl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:982815b4-d05b-825c-9d24-6b03dc273eec",
  "kind": "theorem",
  "lexical_name": "IsThetaTVS.refl",
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
  "slug": "isthetatvs-refl--fbd4ff29c13540b6324ea68e",
  "source": {
    "blob": "e63d2fe0ba18b4bef643d14ef335e32f12d9de78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 221,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TVS/Variant275fe7bfc2944f5b51b15a4c0bccc226183f0fdad7a33cabd0e406c07b06aec5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbd4ff29c13540b6324ea68e19a755619f764a764eee2073f0cbd517845a1ba8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TVS/Variant275fe7bfc2944f5b51b15a4c0bccc226183f0fdad7a33cabd0e406c07b06aec5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:982815b4-d05b-825c-9d24-6b03dc273eec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsThetaTVS.refl (f : α → E) (l : Filter α) : f =Θ[𝕜; l] f :=
  ⟨.rfl, .rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TVS/Variant275fe7bfc2944f5b51b15a4c0bccc226183f0fdad7a33cabd0e406c07b06aec5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TVS/Variant275fe7bfc2944f5b51b15a4c0bccc226183f0fdad7a33cabd0e406c07b06aec5.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e63d2fe0ba18b4bef643d14ef335e32f12d9de78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
