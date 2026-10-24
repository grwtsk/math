# hasFDerivWithinAt_of_subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7390f51-444e-2604-0105-5ce954c47924",
  "kind": "theorem",
  "lexical_name": "hasFDerivWithinAt_of_subsingleton",
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
  "slug": "hasfderivwithinat-of-subsingleton--6c95f4a2583039effeed23d5",
  "source": {
    "blob": "e26aa2fd7c0ca989245d1c442b57bbd217f15446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 307,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Const/Variant7cc7138699129643b2437a66f3e1b1dd88c2e89de9f236af73284111e5eaca7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c95f4a2583039effeed23d5c61e90f2493417cd9a443050f882f08a8cfb5b68",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Const/Variant7cc7138699129643b2437a66f3e1b1dd88c2e89de9f236af73284111e5eaca7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7390f51-444e-2604-0105-5ce954c47924`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivWithinAt_of_subsingleton [h : Subsingleton E] (f : E → F) (s : Set E) (x : E) :
    HasFDerivWithinAt f (0 : E →L[𝕜] F) s x := by
  obtain rfl | ⟨a, rfl⟩ := s.eq_empty_or_singleton_of_subsingleton
  · simp
  · exact HasFDerivWithinAt.singleton

@[fun_prop, nontriviality]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Const/Variant7cc7138699129643b2437a66f3e1b1dd88c2e89de9f236af73284111e5eaca7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Const/Variant7cc7138699129643b2437a66f3e1b1dd88c2e89de9f236af73284111e5eaca7a.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e26aa2fd7c0ca989245d1c442b57bbd217f15446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
