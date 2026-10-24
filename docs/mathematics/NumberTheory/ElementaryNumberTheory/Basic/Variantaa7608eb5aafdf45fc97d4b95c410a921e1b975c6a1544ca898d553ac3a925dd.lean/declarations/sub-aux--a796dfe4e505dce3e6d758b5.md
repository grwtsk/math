# sub.aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c7f91b8-a398-2d72-9475-faec780a601b",
  "kind": "theorem",
  "lexical_name": "sub.aux",
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
  "slug": "sub-aux--a796dfe4e505dce3e6d758b5",
  "source": {
    "blob": "8197b0e515723b08bc98c7996edc1e523048d59c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 292,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a796dfe4e505dce3e6d758b533b4f7188ff9712dd0b9fdadbfb3bf151216f23b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c7f91b8-a398-2d72-9475-faec780a601b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub.aux (a b : Rat) {g ad bd} (hg : g = a.den.gcd b.den)
    (had : ad = a.den / g) (hbd : bd = b.den / g) :
    let den := ad * b.den; let num := a.num * bd - b.num * ad
    num.natAbs.gcd g = num.natAbs.gcd den := by
  have := add.aux a (-b) hg had hbd
  simp only [show (-b).num = -b.num from rfl, Int.neg_mul] at this
  exact this

/-- Subtraction of rational numbers. (This definition is `@[irreducible]` because you don't want to
unfold it. Use `Rat.sub_def` instead.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8197b0e515723b08bc98c7996edc1e523048d59c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
