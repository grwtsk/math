# mul_le_of_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d709cba-cd3b-2e04-d897-a1c93b1f0ffd",
  "kind": "theorem",
  "lexical_name": "mul_le_of_limit",
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
  "slug": "mul-le-of-limit--ba274e73991bea4890975bb8",
  "source": {
    "blob": "53152e3d4debdab6c3b8e0021e8e4d3dc0b5e47b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 745,
    "line": 736,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant43e0ede7b469914a8c73ce8a75b47eab08e32e468dbee6873b07f140572809cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba274e73991bea4890975bb8ec1d618dbe93dc01df07f17ff194ed0495297e1e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant43e0ede7b469914a8c73ce8a75b47eab08e32e468dbee6873b07f140572809cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d709cba-cd3b-2e04-d897-a1c93b1f0ffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 736–745.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_le_of_limit {a b c : Ordinal} (h : IsLimit b) : a * b ≤ c ↔ ∀ b' < b, a * b' ≤ c :=
  ⟨fun h _ l => (mul_le_mul_left' l.le _).trans h, fun H =>
    -- Porting note: `induction` tactics are required because of the parser bug.
    le_of_not_lt <| by
      induction a using inductionOn with
      | H α r =>
        induction b using inductionOn with
        | H β s =>
          exact mul_le_of_limit_aux h H⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant43e0ede7b469914a8c73ce8a75b47eab08e32e468dbee6873b07f140572809cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant43e0ede7b469914a8c73ce8a75b47eab08e32e468dbee6873b07f140572809cd.lean#L736).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53152e3d4debdab6c3b8e0021e8e4d3dc0b5e47b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
