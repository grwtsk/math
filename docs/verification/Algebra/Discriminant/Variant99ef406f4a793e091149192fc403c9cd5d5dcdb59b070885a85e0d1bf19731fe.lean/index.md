# Verification target: GRWTSK.Algebra.Discriminant.Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f94de84008804b2f718166291f9c3a04b62d1011",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/index.md) · [Full source](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f94de84008804b2f718166291f9c3a04b62d1011`.

Source path: `GRWTSK/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [discr](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/discr--bdc9d1a0bfe3889d0fec315d.md) | 54 | `declaration-track:bdc9d1a0bfe3889d0fec315d6df061dae1c2a71ce2e0d251a546742bfdae0563` |
| 2 | `theorem` | [discr_def](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/discr-def--d6617ce7a57a0ecd185f0976.md) | 56 | `result-track:d6617ce7a57a0ecd185f0976be951d45aac5241b66bba23ed821f822c6601012` |
| 3 | `theorem` | [im_sq_mul_discr](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/im-sq-mul-discr--db5a8b89d9d0080a49e73e0e.md) | 59 | `result-track:db5a8b89d9d0080a49e73e0e16a27b0877c8269a89690fc3a7389d2b192f7ad5` |
| 4 | `theorem` | [discr_changeGenerator](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/discr-changegenerator--65b5f83f65b00187403db23b.md) | 65 | `result-track:65b5f83f65b00187403db23bf628f7879736c8680b0f225233abfa1912ba104f` |
| 5 | `theorem` | [algebraMap_discr](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/algebramap-discr--0281fac71020d99499a64116.md) | 72 | `result-track:0281fac71020d99499a641168124f059c6d4e391bae3897a98bb9da1fdc5f326` |
| 6 | `theorem` | [exists_sq_eq_iff_isSquare_discr](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/exists-sq-eq-iff-issquare-discr--b2585485e1eaeddd13a50597.md) | 80 | `result-track:b2585485e1eaeddd13a50597d42c7ff14ba7c97cc62fd96c2d9e837d6c5a3ed3` |
| 7 | `theorem` | [discr_eq_im_sq_mul_discr](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/discr-eq-im-sq-mul-discr--c810823f8e841c648ec48022.md) | 94 | `result-track:c810823f8e841c648ec48022ca7fa0b857abb055a4825650487f17e7bdac78e3` |
| 8 | `def` | [algEquivDiscrZero](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/algequivdiscrzero--82e0de36e95a95e36ae22b71.md) | 100 | `declaration-track:82e0de36e95a95e36ae22b7100e08e458b7a46707ce741ada3b6606ab4ce971b` |
| 9 | `theorem` | [algEquivDiscrZero_re](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/algequivdiscrzero-re--c160c69625bdc6a2a269ef3f.md) | 106 | `result-track:c160c69625bdc6a2a269ef3f0d90517450dbd59a2a2ce92d2347b8fac432783c` |
| 10 | `theorem` | [algEquivDiscrZero_im](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/algequivdiscrzero-im--24d75b7bab4e30c29399dcc8.md) | 111 | `result-track:24d75b7bab4e30c29399dcc83da989672de34c4cf247e2c2c6dfd3fdcd9625a3` |
| 11 | `theorem` | [algEquivDiscrZero_symm_re](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/algequivdiscrzero-symm-re--0dbe7d7eef44bbe86f62dbc6.md) | 116 | `result-track:0dbe7d7eef44bbe86f62dbc641683caeaf40fdeac8ba913ed401284c719c5747` |
| 12 | `theorem` | [algEquivDiscrZero_symm_im](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/algequivdiscrzero-symm-im--23cdc240d8674a26cebf0528.md) | 122 | `result-track:23cdc240d8674a26cebf05284ff90676a8cd37f7fb2c7470a73b65b6b0b087fe` |
| 13 | `theorem` | [algEquivDiscrZero_add_smul](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/algequivdiscrzero-add-smul--2e4a91ecbdc04a0ade93ace6.md) | 128 | `result-track:2e4a91ecbdc04a0ade93ace6787566f61a748bc30337910686035d9eda261f41` |
| 14 | `theorem` | [algEquivDiscrZero_symm_add_smul](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/algequivdiscrzero-symm-add-smul--29a6ce6cb6bd6cca00e84bdb.md) | 133 | `result-track:29a6ce6cb6bd6cca00e84bdbb6d533c2616abff18bca73f46ed997f3d201bff6` |
| 15 | `theorem` | [nonempty_algEquiv_iff](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/nonempty-algequiv-iff--5ba6e423f530d6d38a5b5e44.md) | 139 | `result-track:5ba6e423f530d6d38a5b5e4499a3424218be97405405b972a3dbe742dc4435ee` |
| 16 | `theorem` | [nonempty_algEquiv_iff_of_invertible_two](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/nonempty-algequiv-iff-of-invertible-two--f689f10deabb406af704ec1a.md) | 153 | `result-track:f689f10deabb406af704ec1ab480a34b97856cfac5c88e5b73bcb02249601662` |
| 17 | `theorem` | [nonempty_algEquiv_int_iff](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/nonempty-algequiv-int-iff--e8a7a2401348794485757a66.md) | 161 | `result-track:e8a7a2401348794485757a66390f1ea66de68a597328ed5f104d0b2eb4403998` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/instance--df2bd00d31c55b5f263b9a0c.md) | 180 | `declaration-track:df2bd00d31c55b5f263b9a0cbdc3672a1cf1d63e0dd03be8642cc949d9874a2c` |
| 19 | `theorem` | [not_isField_of_isSquare_discr](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/not-isfield-of-issquare-discr--9511e5789436a0d90c435197.md) | 188 | `result-track:9511e5789436a0d90c435197bdc1b233b5c8a98c8778c9d4a3caaff4071247d6` |
| 20 | `theorem` | [isField_iff_not_isSquare_discr](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/isfield-iff-not-issquare-discr--d4d0ab8cefa6a8ca0ec8cf00.md) | 201 | `result-track:d4d0ab8cefa6a8ca0ec8cf00dbbb6088f973f28477a67a341bc1a05c48a87272` |
| 21 | `example` | [(anonymous)](../../../../mathematics/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/declarations/example--ac75e2ed9a888de53ed06276.md) | 210 | `declaration-track:ac75e2ed9a888de53ed06276eafd11e2f91fb428f24d41b94a4f0e3a9a9ae49e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
