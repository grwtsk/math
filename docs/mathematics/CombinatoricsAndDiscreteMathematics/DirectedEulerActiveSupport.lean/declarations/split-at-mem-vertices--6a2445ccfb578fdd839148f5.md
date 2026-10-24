# split_at_mem_vertices

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76f608f4-3787-4b9d-b17c-a4fec1b42167",
  "kind": "theorem",
  "lexical_name": "split_at_mem_vertices",
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
  "slug": "split-at-mem-vertices--6a2445ccfb578fdd839148f5",
  "source": {
    "blob": "c114e1244ffa245dc5c133bee4f5cb5f3185c2e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 59,
    "path": "GRWTSK/Combinatorics/DirectedEulerActiveSupport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a2445ccfb578fdd839148f5b3fb1060e4b0382ace86e275c9c81095cd53131c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76f608f4-3787-4b9d-b17c-a4fec1b42167`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem split_at_mem_vertices {a c : V} (p : Walk tail head a c)
    (b : V) (hb : b ∈ p.vertices) :
    ∃ (pre : Walk tail head a b) (post : Walk tail head b c), p = pre.append post := by
  induction p generalizing b with
  | nil a =>
      have hba : b = a := List.mem_singleton.mp hb
      subst b
      exact ⟨.nil a, .nil a, rfl⟩
  | cons e rest ih =>
      rcases List.mem_cons.mp hb with hba | hb
      · subst b
        exact ⟨.nil _, .cons e rest, rfl⟩
      · obtain ⟨pre, post, hsplit⟩ := ih b hb
        refine ⟨.cons e pre, post, ?_⟩
        rw [hsplit]
        rfl

/-- In a balanced supply, a nonexhaustive nonempty closed trail has an
unused outgoing edge at a genuinely visited vertex. Connectivity concerns
only incident-edge support, so isolated vertices impose no condition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedEulerActiveSupport.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c114e1244ffa245dc5c133bee4f5cb5f3185c2e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
