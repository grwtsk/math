# isLittleO_one_of_lt_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00a0625bc4196339213abf6c9cb87b79515aa3af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/4055960ff800598b0057f4de7e9bb7e2203974ed90f5c01e8ea91a91fcb2de19.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b978583e-fc00-5c93-521e-3cea8cf785f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc6b1e9c-cfba-60e0-7c9f-3421e38ec7e2",
  "kind": "theorem",
  "lexical_name": "isLittleO_one_of_lt_radius",
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
  "slug": "islittleo-one-of-lt-radius--8fe36885668cd3dc9a8d91f7",
  "source": {
    "blob": "00a0625bc4196339213abf6c9cb87b79515aa3af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 194,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant4055960ff800598b0057f4de7e9bb7e2203974ed90f5c01e8ea91a91fcb2de19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fe36885668cd3dc9a8d91f7eee9c802b63b5c4f9ccec958aae893468b8bd1a4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant4055960ff800598b0057f4de7e9bb7e2203974ed90f5c01e8ea91a91fcb2de19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc6b1e9c-cfba-60e0-7c9f-3421e38ec7e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLittleO_one_of_lt_radius (h : ↑r < p.radius) :
    (fun n => ‖p n‖ * (r : ℝ) ^ n) =o[atTop] (fun _ => 1 : ℕ → ℝ) :=
  let ⟨_, ha, hp⟩ := p.isLittleO_of_lt_radius h
  hp.trans <| (isLittleO_pow_pow_of_lt_left ha.1.le ha.2).congr (fun _ => rfl) one_pow

/-- For `r` strictly smaller than the radius of `p`, then `‖pₙ‖ rⁿ` tends to zero exponentially:
for some `0 < a < 1` and `C > 0`, `‖p n‖ * r ^ n ≤ C * a ^ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant4055960ff800598b0057f4de7e9bb7e2203974ed90f5c01e8ea91a91fcb2de19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant4055960ff800598b0057f4de7e9bb7e2203974ed90f5c01e8ea91a91fcb2de19.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00a0625bc4196339213abf6c9cb87b79515aa3af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
