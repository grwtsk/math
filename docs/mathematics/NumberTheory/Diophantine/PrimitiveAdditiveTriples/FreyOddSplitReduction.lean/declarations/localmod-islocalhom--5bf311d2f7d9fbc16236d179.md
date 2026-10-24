# localMod_isLocalHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fbdee79377d5e5c36aa144084d171a2ae229526e752c498378ff21d88b3c592f",
  "kind": "instance",
  "lexical_name": "localMod_isLocalHom",
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
  "slug": "localmod-islocalhom--5bf311d2f7d9fbc16236d179",
  "source": {
    "blob": "2cfb369566b977c643a8c676df4812d5be08fc73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 40,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5bf311d2f7d9fbc16236d179663a17524fa6500beda6b8aeeac66f81e7cbdc43",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fbdee79377d5e5c36aa144084d171a2ae229526e752c498378ff21d88b3c592f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance localMod_isLocalHom (p : ℕ) [Fact p.Prime] : IsLocalHom (localMod p) := by
  constructor
  intro x hx
  obtain ⟨n, d, rfl⟩ := IsLocalization.exists_mk'_eq
    (M := (primePlace p).asIdeal.primeCompl) x
  apply (IsLocalization.AtPrime.isUnit_mk'_iff (LocalRing p)
    (primePlace p).asIdeal n d).mpr
  intro hn
  have hn0 : (n : ZMod p) = 0 := by
    apply (ZMod.intCast_zmod_eq_zero_iff_dvd n p).mpr
    simpa only [primePlace, Ideal.mem_span_singleton] using hn
  have hd : IsUnit (localMod p (algebraMap ℤ (LocalRing p) d)) :=
    (IsLocalization.map_units (LocalRing p) d).map (localMod p)
  have he := congrArg (localMod p) (IsLocalization.mk'_spec (LocalRing p) n d)
  have he' : localMod p (IsLocalization.mk' (LocalRing p) n d) *
      localMod p (algebraMap ℤ (LocalRing p) d) = 0 := by
    simpa only [map_mul, map_intCast, hn0] using he
  exact (mul_ne_zero (isUnit_iff_ne_zero.mp hx) (isUnit_iff_ne_zero.mp hd)) he'

/-- No residue field or finite-field identification is supplied as an assumption. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cfb369566b977c643a8c676df4812d5be08fc73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
