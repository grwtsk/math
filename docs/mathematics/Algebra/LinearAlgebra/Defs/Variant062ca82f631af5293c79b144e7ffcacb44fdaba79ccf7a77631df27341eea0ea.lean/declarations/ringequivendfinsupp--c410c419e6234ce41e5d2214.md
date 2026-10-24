# ringEquivEndFinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6df4581162283b1d20eedb9115974f209396667c59b584f056d14dc717672ec",
  "kind": "def",
  "lexical_name": "ringEquivEndFinsupp",
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
  "slug": "ringequivendfinsupp--c410c419e6234ce41e5d2214",
  "source": {
    "blob": "b1d08ffe87677b617138f97d3ec536af29d96e5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 358,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant062ca82f631af5293c79b144e7ffcacb44fdaba79ccf7a77631df27341eea0ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c410c419e6234ce41e5d2214ad2c76c1b9cb9f3f7e7a03ff2463bbe4d3c9e91a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant062ca82f631af5293c79b144e7ffcacb44fdaba79ccf7a77631df27341eea0ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6df4581162283b1d20eedb9115974f209396667c59b584f056d14dc717672ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps!] noncomputable def ringEquivEndFinsupp (i : ι) :
    End (End R M) M ≃+* End (End R (ι →₀ M)) (ι →₀ M) where
  __ := ringHomEndFinsupp ι
  invFun f :=
  { toFun m := f (Finsupp.single i m) i
    map_add' _ _ := by simp
    map_smul' g m := let g := Finsupp.mapRange.linearMap g
      show _ = g _ i by rw [← End.smul_def g, ← map_smul]; simp [g] }
  left_inv _ := by ext; simp
  right_inv f := by
    ext x j
    change f (Finsupp.lsingle (R := R) (M := M) i ∘ₗ Finsupp.lapply j • x) i = _
    rw [map_smul]
    simp

variable (R M ι)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant062ca82f631af5293c79b144e7ffcacb44fdaba79ccf7a77631df27341eea0ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant062ca82f631af5293c79b144e7ffcacb44fdaba79ccf7a77631df27341eea0ea.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1d08ffe87677b617138f97d3ec536af29d96e5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
