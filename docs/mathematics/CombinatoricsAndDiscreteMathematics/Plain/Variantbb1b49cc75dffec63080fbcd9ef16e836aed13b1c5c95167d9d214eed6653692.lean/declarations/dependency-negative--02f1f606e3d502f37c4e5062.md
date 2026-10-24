# dependency_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f336425e-7b04-6c0e-2816-316a0c6c93a6",
  "kind": "theorem",
  "lexical_name": "dependency_negative",
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
  "slug": "dependency-negative--02f1f606e3d502f37c4e5062",
  "source": {
    "blob": "6a06da1ab34fddd6e41657079438d1eaa5b37095",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 166,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Plain/Variantbb1b49cc75dffec63080fbcd9ef16e836aed13b1c5c95167d9d214eed6653692.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02f1f606e3d502f37c4e50624fecccf5ae6ed65cfb25513f5b37868fd82a31ce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Plain/Variantbb1b49cc75dffec63080fbcd9ef16e836aed13b1c5c95167d9d214eed6653692.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f336425e-7b04-6c0e-2816-316a0c6c93a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dependency_negative {n d : Node Ω C} (hd : (schema hw).Dependency d n)
    {D : Set (Set S)} (hD : IsComponent (SecondaryEdge P C) D)
    (hn : Ω.profile n.type ∈ D) (hd' : Ω.profile d.type ∈ D) :
    ∃ I ∈ D, ∃ K ∈ D, SecondaryEdge P C I K true := by
  obtain ⟨I, K, he, hi, hk⟩ := dependency_path hd
  exact ⟨I, hD.between hd' hn hi ((Reach.single he).trans hk), K,
    hD.between hd' hn (hi.trans (.single he)) hk, he⟩

variable (hw)

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Plain/Variantbb1b49cc75dffec63080fbcd9ef16e836aed13b1c5c95167d9d214eed6653692.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Plain/Variantbb1b49cc75dffec63080fbcd9ef16e836aed13b1c5c95167d9d214eed6653692.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a06da1ab34fddd6e41657079438d1eaa5b37095` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
