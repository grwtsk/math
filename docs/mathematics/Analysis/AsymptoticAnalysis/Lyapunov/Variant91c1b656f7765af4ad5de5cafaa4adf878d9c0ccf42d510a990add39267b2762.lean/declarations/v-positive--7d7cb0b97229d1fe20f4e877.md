# v_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0934fdb03a56573189df3a291da5cb2055e86a1522ad436cbd6195c8d8f57cb3",
  "kind": "def",
  "lexical_name": "v_positive",
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
  "slug": "v-positive--7d7cb0b97229d1fe20f4e877",
  "source": {
    "blob": "a0f8fb1906130fa6d1676c152247b89e724a5532",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 92,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Lyapunov/Variant91c1b656f7765af4ad5de5cafaa4adf878d9c0ccf42d510a990add39267b2762.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d7cb0b97229d1fe20f4e87718a83274cd9845548a025ec18485e5a314d35c46",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Lyapunov/Variant91c1b656f7765af4ad5de5cafaa4adf878d9c0ccf42d510a990add39267b2762.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0934fdb03a56573189df3a291da5cb2055e86a1522ad436cbd6195c8d8f57cb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def v_positive : IntervalRat := ⟨1/10, 1, by norm_num⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Lyapunov/Variant91c1b656f7765af4ad5de5cafaa4adf878d9c0ccf42d510a990add39267b2762.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Lyapunov/Variant91c1b656f7765af4ad5de5cafaa4adf878d9c0ccf42d510a990add39267b2762.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0f8fb1906130fa6d1676c152247b89e724a5532` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
