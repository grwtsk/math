# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M536f75726365547265652f4e6f64652e6c65616e.Variantae223e836ef209da4471a4f489250b3a6ab3fb02767572b2bc2da4aac32f62f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `481e184d257aba8ebd3192f8558bca80882d5149` · SHA-256 `b355639133a050f2589704b207a6bb1de75cb20ce51251300b735d58305cd8d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pole.Variant60f56ffa3254c3dc7e330699fd995de1436447b014759b2d8d0598ca5df25c3c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"60f56ffa3254c3dc7e330699fd995de1436447b014759b2d8d0598ca5df25c3c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Pole.Variant60f56ffa3254c3dc7e330699fd995de1436447b014759b2d8d0598ca5df25c3c","mathematical_subject":"Foundations.Unclassified","original_sha256":"60f56ffa3254c3dc7e330699fd995de1436447b014759b2d8d0598ca5df25c3c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit1/Bit1/Bit1/Bit0/Bit1/Bit0/M536f75726365547265652f4e6f64652e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e67436861696e2e6c65616e
import Think.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f42726169645461786f6e6f6d792e6c65616e
import Think.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f436f6d7072657373656453657175656e63652e6c65616e
import Think.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e
import Think.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f722e6c65616e
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e672e6c65616e
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit1.Bit0.M506970656c696e652f43656e7465722f42726169644e6f6465732e6c65616e
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e41766f6964696e672e6c65616e
import Think.Bit0.Bit0.Bit1.Bit1.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e54776f436f706965732e6c65616e
import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.M506970656c696e652f43656e7465722f42726169642e6c65616e
import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f436865636b706f696e74732e6c65616e
import Think.Bit0.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e46726573682e6c65616e
import Think.Bit0.Bit1.Bit0.Bit1.Bit0.Bit0.Bit0.Bit0.M506970656c696e652f43656e7465722f456d6c5368656666657254726163652e6c65616e
import Think.Bit0.Bit1.Bit0.Bit1.Bit0.Bit0.Bit1.Bit0.Bit0.M506970656c696e652f43656e7465722f5370696e65466f756e646174696f6e2e6c65616e
import Think.Bit0.Bit1.Bit0.Bit1.Bit1.Bit1.Bit1.Bit0.M506970656c696e652f43656e7465722f436f6d7061637443656e746572436f6e74726f6c2e6c65616e
import Think.Bit0.Bit1.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.M506970656c696e652f43656e7465722f5261646f46696e6974655061727469616c49736f2e6c65616e
import Think.Bit0.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f42726169644162736f727074696f6e2e6c65616e
import Think.Bit0.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f4669786564506f696e744c6f6f702e6c65616e
import Think.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f724275696c642e6c65616e
import Think.Bit1.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f72537465702e6c65616e
import Think.Bit1.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e2e6c65616e
import Think.Bit1.Bit0.Bit0.Bit1.Bit0.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616e
import Think.Bit1.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.M506970656c696e652f43656e7465722f436f6d70616374506970656c696e652e6c65616e
import Think.Bit1.Bit0.Bit1.Bit0.Bit0.Bit1.M506970656c696e652f43656e7465722f576569676874656443656e7465722e6c65616e
import Think.Bit1.Bit1.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f436f72726563746976654c6f6f702e6c65616e
import Think.Bit1.Bit1.Bit0.Bit0.Bit1.Bit1.Bit0.Bit0.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f7250726f6a656374696f6e2e6c65616e
import Think.Bit1.Bit1.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f5261646f456d62656464696e67457874656e73696f6e2e6c65616e
import Think.Bit1.Bit1.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f5370696e652e6c65616e
import Think.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.M506970656c696e652f43656e7465722f4d756c74696e6f6d69616c506c6163656d656e742e6c65616e
import Think.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.Bit0.Bit1.M506970656c696e652f43656e7465722f4272616964476170732e6c65616e
import Think.Bit1.Bit1.Bit1.Bit0.Bit0.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616e
import Think.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f4272616964547269706c65732e6c65616e
import Think.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e
import Think.Bit1.Bit1.Bit1.Bit1.Bit0.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061727469616c49736f4f626c69676174696f6e732e6c65616e
import Think.Bit1.Bit1.Bit1.Bit1.Bit1.Bit0.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f72436f706965732e6c65616e


/- source-tree-label: STL1|L|addr=00111010|role=proof_code_atom|slug=sourcetree-node|owner=canonical_owner|core=SourceTree/Node.lean|leaf=M536f75726365547265652f4e6f64652e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pole.Variant60f56ffa3254c3dc7e330699fd995de1436447b014759b2d8d0598ca5df25c3c

set_option autoImplicit false

namespace Think.SourceTree

inductive Pole where
  | request
  | carrier
  | lowering
  | trace
  | compact
  | classifier
  | scheduler
  | cluster
  | boundary
deriving DecidableEq, Repr

structure PoleWeight where
  pole : Pole
  weight : Nat
deriving DecidableEq, Repr

end Think.SourceTree
```
