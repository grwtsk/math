# IsCycleOn.of_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6720f7d3-3cfd-018d-6c4d-9908f6461569",
  "kind": "theorem",
  "lexical_name": "IsCycleOn.of_pow",
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
  "slug": "iscycleon-of-pow--f977de48816f7d0188d10a97",
  "source": {
    "blob": "2b37542d32b13f4895cc697a6c13254f7038e3ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 934,
    "line": 931,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f977de48816f7d0188d10a97aadc8d42de66ccc0f1e700acdc9d459f156795f5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6720f7d3-3cfd-018d-6c4d-9908f6461569`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 931–934.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCycleOn.of_pow {n : ℕ} (hf : (f ^ n).IsCycleOn s) (h : Set.BijOn f s s) : f.IsCycleOn s :=
  ⟨h, fun _ hx _ hy => (hf.2 hx hy).of_pow⟩
#align equiv.perm.is_cycle_on.of_pow Equiv.Perm.IsCycleOn.of_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean#L931).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b37542d32b13f4895cc697a6c13254f7038e3ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
