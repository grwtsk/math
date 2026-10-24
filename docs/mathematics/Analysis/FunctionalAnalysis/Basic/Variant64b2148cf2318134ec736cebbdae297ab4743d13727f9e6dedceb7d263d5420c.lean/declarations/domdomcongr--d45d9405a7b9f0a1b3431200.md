# domDomCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a5221686fa2db272d89ba61f08ab63247881f380af822cc7ccea72f1cc5d134",
  "kind": "def",
  "lexical_name": "domDomCongr",
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
  "slug": "domdomcongr--d45d9405a7b9f0a1b3431200",
  "source": {
    "blob": "e7976713db7572543ced2bc2edd97a5aa36369a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 364,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant64b2148cf2318134ec736cebbdae297ab4743d13727f9e6dedceb7d263d5420c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d45d9405a7b9f0a1b3431200e79962837c5665ab4518cf66b2fa199d343e3658",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant64b2148cf2318134ec736cebbdae297ab4743d13727f9e6dedceb7d263d5420c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a5221686fa2db272d89ba61f08ab63247881f380af822cc7ccea72f1cc5d134`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec def domDomCongr {ι' : Type*} (e : ι ≃ ι')
    (f : ContinuousMultilinearMap R (fun _ : ι => M₂) M₃) :
    ContinuousMultilinearMap R (fun _ : ι' => M₂) M₃ where
  toMultilinearMap := f.domDomCongr e
  cont := f.cont.comp <| continuous_pi fun _ => continuous_apply _

/-- An equivalence of the index set defines an equivalence between the spaces of continuous
multilinear maps. In case of normed spaces, this is a linear isometric equivalence, see
`ContinuousMultilinearMap.domDomCongrₗᵢ`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant64b2148cf2318134ec736cebbdae297ab4743d13727f9e6dedceb7d263d5420c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant64b2148cf2318134ec736cebbdae297ab4743d13727f9e6dedceb7d263d5420c.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7976713db7572543ced2bc2edd97a5aa36369a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
