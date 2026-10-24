# contextRefines_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ccf58ad-ac9f-5a8b-4141-653e1e26e846",
  "kind": "theorem",
  "lexical_name": "contextRefines_trans",
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
  "slug": "contextrefines-trans--b9a3fc96ecab44bf2950eed7",
  "source": {
    "blob": "2be5ee39b49b355894dca92cb01a57ce6d55a28f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 88,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Context/Variantf9616dfec61a2d4d7105aa183bc2d80d57d9b8134dd436ef73d96c952e0c1eaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9a3fc96ecab44bf2950eed79abdfde2c5420f0507b66a04cf0a1fae807d7280",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Context/Variantf9616dfec61a2d4d7105aa183bc2d80d57d9b8134dd436ef73d96c952e0c1eaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ccf58ad-ac9f-5a8b-4141-653e1e26e846`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contextRefines_trans {specific middle general : Context}
    (first : ContextRefines specific middle)
    (second : ContextRefines middle general) :
    ContextRefines specific general := by
  rcases first with
    ⟨snapshot₁, text₁, sentence₁, discourse₁, task₁,
      domain₁, speaker₁, time₁, register₁⟩
  rcases second with
    ⟨snapshot₂, text₂, sentence₂, discourse₂, task₂,
      domain₂, speaker₂, time₂, register₂⟩
  refine
    ⟨snapshot₁.trans snapshot₂,
      ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro value equality
    exact text₁ value (text₂ value equality)
  · intro value equality
    exact sentence₁ value (sentence₂ value equality)
  · intro value equality
    exact discourse₁ value (discourse₂ value equality)
  · intro value equality
    exact task₁ value (task₂ value equality)
  · intro value equality
    exact domain₁ value (domain₂ value equality)
  · intro value equality
    exact speaker₁ value (speaker₂ value equality)
  · intro value equality
    exact time₁ value (time₂ value equality)
  · intro value equality
    exact register₁ value (register₂ value equality)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Context/Variantf9616dfec61a2d4d7105aa183bc2d80d57d9b8134dd436ef73d96c952e0c1eaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Context/Variantf9616dfec61a2d4d7105aa183bc2d80d57d9b8134dd436ef73d96c952e0c1eaa.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2be5ee39b49b355894dca92cb01a57ce6d55a28f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
