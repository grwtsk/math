# eval_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77ad9ed5-e209-8f63-c835-556b7c199056",
  "kind": "theorem",
  "lexical_name": "eval_one",
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
  "slug": "eval-one--62c0cc8f4d4d0720a115a8fd",
  "source": {
    "blob": "5976cd37dd850920ac6af9d2f64b1fdfd06b41d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 98,
    "path": "GRWTSK/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62c0cc8f4d4d0720a115a8fd97f1de21682eb439ee25ea66154cc3ffee611e70",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77ad9ed5-e209-8f63-c835-556b7c199056`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_one (F : Homotopy p₀ p₁) : F.eval 1 = p₁ := by
  ext t
  simp [eval]
#align path.homotopy.eval_one Path.Homotopy.eval_one

end

section

variable {p₀ p₁ p₂ : Path x₀ x₁}

/-- Given a path `p`, we can define a `Homotopy p p` by `F (t, x) = p x`.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5976cd37dd850920ac6af9d2f64b1fdfd06b41d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
