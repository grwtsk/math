# AbsConvexOpenSets.instCoeOut

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c93baf48e0adc236f8430841ed53908bf2c1f9c82f2e0f617f007d46e4fc95ac",
  "kind": "instance",
  "lexical_name": "AbsConvexOpenSets.instCoeOut",
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
  "slug": "absconvexopensets-instcoeout--52968051ac704d99db1d4e91",
  "source": {
    "blob": "e1ef2911a581d49024350691542d22cd365717a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 55,
    "path": "GRWTSK/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52968051ac704d99db1d4e9168036f77690bbc29aeb5f15750033163769cfba5",
  "verification": {
    "reference": "docs/verification/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c93baf48e0adc236f8430841ed53908bf2c1f9c82f2e0f617f007d46e4fc95ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance AbsConvexOpenSets.instCoeOut : CoeOut (AbsConvexOpenSets 𝕜 E) (Set E) :=
  ⟨Subtype.val⟩

namespace AbsConvexOpenSets

variable {𝕜 E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1ef2911a581d49024350691542d22cd365717a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
