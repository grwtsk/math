# has_axiom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:419e10b3-6118-43d5-cb97-019386a8a0d2",
  "kind": "theorem",
  "lexical_name": "has_axiom",
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
  "slug": "has-axiom--140125bb0f5de8d48bd3a386",
  "source": {
    "blob": "67736b7ab8138b5e3e8e88e98c724a3266f47a05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 196,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:140125bb0f5de8d48bd3a386017af9a1fa5d6335570d2dc5b7a0ce7b1e4d901d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:419e10b3-6118-43d5-cb97-019386a8a0d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_axiom {Γ : List (Expr S)} {M A : Expr S} (h : HasType P Γ M A) :
    ∃ s t, P.axioms s t := by
  induction h with
  | ax h => exact ⟨_, _, h⟩
  | var _ ih => exact ih
  | weaken _ _ ih _ => exact ih
  | product _ _ _ ih _ => exact ih
  | abstraction _ _ ih _ => exact ih
  | application _ _ ih _ => exact ih
  | conversion _ _ _ ih _ => exact ih

end HasType

namespace Specification

variable {S : Type u}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67736b7ab8138b5e3e8e88e98c724a3266f47a05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
