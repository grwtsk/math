# differential_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1e259f5-d0cd-aeff-552a-3a6f85543551",
  "kind": "theorem",
  "lexical_name": "differential_apply",
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
  "slug": "differential-apply--e5d7c3c1f4367e351e5d5be8",
  "source": {
    "blob": "afc53a6ba618331e072269ac24aa178b65b952b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 70,
    "path": "GRWTSK/Algebra/LinearAlgebra/InterventionDefect/Variant8ce4d9e53d95bedb91892c645a3eb7831188b2d7416a475a3a073237330139e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5d7c3c1f4367e351e5d5be8b4989bf7d4cc7fe3391be73c64105ee496b917d5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InterventionDefect/Variant8ce4d9e53d95bedb91892c645a3eb7831188b2d7416a475a3a073237330139e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1e259f5-d0cd-aeff-552a-3a6f85543551`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differential_apply
    (I : LinearIntervention X V) (x : X) :
    I.differential x = I.intervened x - I.baseline x := by
  simp [differential]

end LinearIntervention

namespace PositiveCommutingInvolutions

variable {G : PositiveForm V} (C : PositiveCommutingInvolutions G)

/-- Project the intervention differential into the distinguished (+,-) sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InterventionDefect/Variant8ce4d9e53d95bedb91892c645a3eb7831188b2d7416a475a3a073237330139e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InterventionDefect/Variant8ce4d9e53d95bedb91892c645a3eb7831188b2d7416a475a3a073237330139e7.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afc53a6ba618331e072269ac24aa178b65b952b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
